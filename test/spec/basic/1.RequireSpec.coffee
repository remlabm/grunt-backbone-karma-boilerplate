define ['jquery', 'underscore'], ( $, _ ) ->
  describe 'just checking', ->

    it 'works for jquery', ->
      expect( $.isArray([1,2,3]) ).to.equal( true )

    it 'works for underscore', ->
      expect( _.size([1,2,3]) ).to.equal(3)
