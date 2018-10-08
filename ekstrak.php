$zip = new ZipArchive();
$res = $zip->open('pkl.zip'); // file yang mau diekstrak
if ($res === TRUE) {
  $zip->extractTo('../');
  $zip->close();
  echo 'ok !';
} else {
  echo 'error!';
}