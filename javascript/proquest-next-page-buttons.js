// used to add next and previous page keyboard shortcuts
// to proquest online reader
addEventListener("keydown", (event) => {
  switch (event.key) {
    case "ArrowRight":
      document.getElementById("nextPage").click();
      break;
    case "ArrowLeft":
      document.getElementById("prevPage").click();
    default:
      break;
  }
});
