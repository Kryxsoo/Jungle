describe("product", () => {
  it("Visit root", () => {
    cy.visit("/")
  })

  it("Show products", () => {
    cy.contains('Scented Blade').click()
  })

  it("Clicks on Add", () => {
    cy.contains('Add').click({ force: true})
  })

  it("Checks for Cart", () => {
    cy.contains('My Cart (1)')
  })
})