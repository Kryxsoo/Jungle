const cypressConfig = require("../../cypress.config")

describe("product", () => {
  it("Visit root", () => {
    cy.visit("/")
  })

  it("Show products", () => {
    cy.contains('Scented Blade').click()
  })
})