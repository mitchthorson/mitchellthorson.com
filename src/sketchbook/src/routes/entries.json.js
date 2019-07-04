const entries = [
  {
    title: "sketch 1",
    slug: "sketch-01"
  }
];

export function get(req, res) {
  res.writeHead(200, {
    "Content-Type": "application/json"
  });

  res.end(JSON.stringify(entries));
}