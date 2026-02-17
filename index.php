<?php
require('session/credentials.php');
$connexion = new PDO("mysql:host=$host;dbname=$dbname;charset=$charset", $user, $password);

// 1. On récupère les machines
$reqMach = $connexion->query('SELECT * FROM MACHINE');
$machines = $reqMach->fetchAll(\PDO::FETCH_UNIQUE|\PDO::FETCH_ASSOC);

// 2. On récupère le matériel
$reqMat = $connexion->query('SELECT * FROM MATERIEL');
$materiels = $reqMat->fetchAll(\PDO::FETCH_ASSOC);

// 3. ON FUSIONNE : On ajoute les machines à la liste d'affichage
$affichage_complet = [];

// On ajoute d'abord les machines principales
foreach ($machines as $id => $m) {
    $affichage_complet[] = [
            'id' => $id,
            'nom' => $m['nom_mach'],
            'annee' => $m['anne_mach'],
            'details' => $m['det_mach'],
            'type' => $m['typ_mach'],
            'parent' => null // C'est une machine principale
    ];
}

// Puis on ajoute le matériel
foreach ($materiels as $m) {
    $affichage_complet[] = [
            'id' => $m['id_mat'],
            'nom' => $m['nom_mat'],
            'annee' => $m['anne_mat'],
            'details' => $m['det_mat'],
            'type' => $m['typ_mat'],
            'parent' => $m['id_mach_par']
    ];
}

// On trie par ID pour respecter l'ordre de ton image (1, 2, 3, 4, 10, etc.)
usort($affichage_complet, function($a, $b) {
    return $a['id'] <=> $b['id'];
});
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inventaire SI</title>
    <style>
        table { border-collapse: collapse; width: 90%; margin: 20px auto; } /* [cite: 5, 6] */
        th, td { border: 1px solid #333; padding: 10px; text-align: left; } /* [cite: 6, 7] */
        th { background-color: #eee; } /* [cite: 7, 8] */
        .principal { background-color: #f9f9f9; font-weight: bold; }
    </style>
</head>
<body>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Année</th>
        <th>Détails</th>
        <th>Type (libellé)</th>
        <th>Appartient à (nom du parent)</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($affichage_complet as $item): ?>
        <?php $est_principal = empty($item['parent']); ?>
        <tr class="<?= $est_principal ? 'principal' : '' ?>">
            <td><?= $item['id'] ?></td>
            <td><?= htmlspecialchars($item['nom'] ?? '') ?></td>
            <td><?= htmlspecialchars($item['annee'] ?? '') ?></td> <td><?= htmlspecialchars($item['details'] ?? '') ?></td>
            <td><?= htmlspecialchars($item['type'] ?? '') ?></td>
            <td>
                <?php
                if (!$est_principal && isset($machines[$item['parent']])) {
                    echo htmlspecialchars($machines[$item['parent']]['nom_mach']);
                } else {
                    echo "—";
                }
                ?>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>

</body>
</html>