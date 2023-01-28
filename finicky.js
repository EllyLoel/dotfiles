// Use https://finicky-kickstart.now.sh to generate basic configuration
// Learn more about configuration options: https://github.com/johnste/finicky/wiki/Configuration

module.exports = {
  defaultBrowser: "Arc",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) =>
        url.protocol === "http" && !url.host.includes("localhost"),
      url: { protocol: "https" },
    },
  ],
  handlers: [
    {
      match: /^https?:\/\/localhost:.*$/,
      browser: "Polypane",
    },
  ],
};
