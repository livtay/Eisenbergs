//
//  CelebCollectionViewController.swift
//  Eisenberg's
//
//  Created by Olivia Taylor on 11/2/16.
//  Copyright © 2016 Olivia Taylor. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CelebCollectionViewController: UICollectionViewController, UINavigationControllerDelegate, UICollectionViewDelegateFlowLayout {

    var celebPhotos:NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.title = "Celebs Who Love Eisenberg's!"
        loadCelebPhotos()
        self.collectionView?.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.collectionView?.reloadData()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.celebPhotos.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        let currentPhoto:Photo = self.celebPhotos.object(at: indexPath.row) as! Photo
        let image:UIImage = currentPhoto.image
        let imageView = UIImageView(image: image)
        imageView.contentMode = UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        cell.backgroundView = imageView
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //segue to imagevc
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    
    func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width/3
        let collectionViewHeight = (collectionViewWidth * 4) / 6
        return CGSize(width: collectionViewWidth, height:collectionViewHeight) // The size of one cell
    }
    
    //Use for interspacing
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func loadCelebPhotos() {
        
        let melissaGeorge:Photo = Photo(photoTitle: "Melissa George", image: UIImage(named: "celeb_melissa_george")!)
        self.celebPhotos.add(melissaGeorge)
        let chloeSevigny = Photo(photoTitle: "Chloe Sevigny", image: UIImage(named: "celeb_chloe_sevigny")!)
        self.celebPhotos.add(chloeSevigny)
        let katieCouric = Photo(photoTitle: "Katie Couric", image: UIImage(named: "celeb_katie_couric")!)
        self.celebPhotos.add(katieCouric)
        let davidZayas = Photo(photoTitle: "David Zayas", image: UIImage(named: "celeb_david_zayas")!)
        self.celebPhotos.add(davidZayas)
        let jodieFoster = Photo(photoTitle: "Jodie Foster", image: UIImage(named: "celeb_jody_foster")!)
        self.celebPhotos.add(jodieFoster)
        let andrewWK = Photo(photoTitle: "Andrew W. K.", image: UIImage(named: "celeb_andrew_wk")!)
        self.celebPhotos.add(andrewWK)
        let willieGarson = Photo(photoTitle: "Willie Garson", image: UIImage(named: "celeb_willie_garson")!)
        self.celebPhotos.add(willieGarson)
        let radioMan = Photo(photoTitle: "Craig aka Radio Man", image: UIImage(named: "celeb_radio_man")!)
        self.celebPhotos.add(radioMan)
        let robCorddry = Photo(photoTitle: "Rob Corddry", image: UIImage(named: "celeb_rob_corddry")!)
        self.celebPhotos.add(robCorddry)
        let kevinCorrigan = Photo(photoTitle: "Kevin Corrigan", image: UIImage(named: "celeb_kevin_corrigan")!)
        self.celebPhotos.add(kevinCorrigan)
        let bruceAltman = Photo(photoTitle: "Bruce Altman", image: UIImage(named: "celeb_bruce_altman")!)
        self.celebPhotos.add(bruceAltman)
        let stevenSchirripa = Photo(photoTitle: "Steven Schirripa", image: UIImage(named: "celeb_steven_schirripa")!)
        self.celebPhotos.add(stevenSchirripa)
        let davidJohannsen = Photo(photoTitle: "David Johannsen", image: UIImage(named: "celeb_david_johannsen")!)
        self.celebPhotos.add(davidJohannsen)
        let fatJew = Photo(photoTitle: "Josh \"The Fat Jew\" Ostrovsky", image: UIImage(named: "celeb_fabrizio_goldstein")!)
        self.celebPhotos.add(fatJew)
        let nicoleLaliberte = Photo(photoTitle: "Nicole Laliberte", image: UIImage(named: "celeb_nicole_laliberte")!)
        self.celebPhotos.add(nicoleLaliberte)
        let joanNathan = Photo(photoTitle: "Joan Nathan", image: UIImage(named: "celeb_Joan_Nathan")!)
        self.celebPhotos.add(joanNathan)
        let peterJacobson = Photo(photoTitle: "Peter Jacobson", image: UIImage(named: "celeb_peter_jacobson")!)
        self.celebPhotos.add(peterJacobson)
        let charlotteRampling = Photo(photoTitle: "Charlotte Rampling", image: UIImage(named: "celeb_charlotte_rampling")!)
        self.celebPhotos.add(charlotteRampling)
        let joeySlotnick = Photo(photoTitle: "Joey Slotnick", image: UIImage(named: "celeb_joey_slotnick")!)
        self.celebPhotos.add(joeySlotnick)
        let lievSchreiber = Photo(photoTitle: "Liev Schreiber", image: UIImage(named: "celeb_liev_schreiber")!)
        self.celebPhotos.add(lievSchreiber)
        let michaelImperioli = Photo(photoTitle: "Michael Imperioli", image: UIImage(named: "celeb_michael_imperioli")!)
        self.celebPhotos.add(michaelImperioli)
        let nickJonas = Photo(photoTitle: "Nick Jonas", image: UIImage(named: "celeb_nick_jonas")!)
        self.celebPhotos.add(nickJonas)
        let michaelGross = Photo(photoTitle: "Michael Gross", image: UIImage(named: "celeb_michael_gross")!)
        self.celebPhotos.add(michaelGross)
        let nancyGiles = Photo(photoTitle: "Nancy Giles", image: UIImage(named: "celeb_nancy_giles")!)
        self.celebPhotos.add(nancyGiles)
        let marthaPlimpton = Photo(photoTitle: "Martha Plimpton", image: UIImage(named: "celeb_martha_plimpton")!)
        self.celebPhotos.add(marthaPlimpton)
        let jackieMason = Photo(photoTitle: "Jackie Mason", image: UIImage(named: "celeb_Jackie_Mason")!)
        self.celebPhotos.add(jackieMason)
        let brianCarney = Photo(photoTitle: "Brian Carney", image: UIImage(named: "celeb_brian_carney")!)
        self.celebPhotos.add(brianCarney)
        let johnRothman = Photo(photoTitle: "John Rothman", image: UIImage(named: "celeb_john_rothman")!)
        self.celebPhotos.add(johnRothman)
        let jonathanCoulton = Photo(photoTitle: "Jonathan Coulton", image: UIImage(named: "celeb_jonathan_coulton")!)
        self.celebPhotos.add(jonathanCoulton)
        let leoDiCaprio = Photo(photoTitle: "Leonardo DiCaprio", image: UIImage(named: "celeb_LeoDiCaprio")!)
        self.celebPhotos.add(leoDiCaprio)
        let benjaminWalker = Photo(photoTitle: "Benjamin Walker", image: UIImage(named: "celeb_Benjamin_Walker")!)
        self.celebPhotos.add(benjaminWalker)
        let johnGlover = Photo(photoTitle: "John Glover", image: UIImage(named: "celeb_john_glover")!)
        self.celebPhotos.add(johnGlover)
        let cynthiaHarris = Photo(photoTitle: "Cynthia Harris", image: UIImage(named: "celeb_cynthia_harris")!)
        self.celebPhotos.add(cynthiaHarris)
        let jasonKravitz = Photo(photoTitle: "Jason Kravitz", image: UIImage(named: "celeb_Jason_Kravitz")!)
        self.celebPhotos.add(jasonKravitz)
        let nestorSerrano = Photo(photoTitle: "Nestor Serrano", image: UIImage(named: "celeb_nestor_serrano")!)
        self.celebPhotos.add(nestorSerrano)
        let rudyGiuliani = Photo(photoTitle: "Rudy Giuliani", image: UIImage(named: "celeb_RudyGiuliani")!)
        self.celebPhotos.add(rudyGiuliani)
        let bono = Photo(photoTitle: "Bono", image: UIImage(named: "celeb_bono")!)
        self.celebPhotos.add(bono)
        let paulGiamatti = Photo(photoTitle: "Paul Giamatti", image: UIImage(named: "celeb_paul_giamatti")!)
        self.celebPhotos.add(paulGiamatti)
        let jimBelushi = Photo(photoTitle: "Jim Belushi", image: UIImage(named: "celeb_jim_belushi")!)
        self.celebPhotos.add(jimBelushi)
        let susanDey = Photo(photoTitle: "Susan Dey", image: UIImage(named: "celeb_susan_dey")!)
        self.celebPhotos.add(susanDey)
        let tylerFlorence = Photo(photoTitle: "Tyler Florence", image: UIImage(named: "celeb_tyler_florence")!)
        self.celebPhotos.add(tylerFlorence)
        let stevenVZ = Photo(photoTitle: "Steven Van Zandt", image: UIImage(named: "celeb_steve_van_zandt")!)
        self.celebPhotos.add(stevenVZ)
        let glenHansard = Photo(photoTitle: "Glen Hansard", image: UIImage(named: "celeb_Glen_Hansard")!)
        self.celebPhotos.add(glenHansard)
        let robertDowneySr = Photo(photoTitle: "Robert Downey Sr.", image: UIImage(named: "celeb_Robert_Downey_Sr")!)
        self.celebPhotos.add(robertDowneySr)
        let laurenAmbrose = Photo(photoTitle: "Lauren Ambrose", image: UIImage(named: "celeb_lauren_ambrose")!)
        self.celebPhotos.add(laurenAmbrose)
        let peterFrancisJames = Photo(photoTitle: "Peter Francis James", image: UIImage(named: "celeb_peter_francis_james")!)
        self.celebPhotos.add(peterFrancisJames)
        let stevenWeber = Photo(photoTitle: "Steven Weber", image: UIImage(named: "celeb_Steven_Weber")!)
        self.celebPhotos.add(stevenWeber)
        let ezraKnight = Photo(photoTitle: "Ezra Knight", image: UIImage(named: "celeb_ezra_knight")!)
        self.celebPhotos.add(ezraKnight)
        let jillHennessy = Photo(photoTitle: "Jill Hennessy", image: UIImage(named: "celeb_jill_hennessy")!)
        self.celebPhotos.add(jillHennessy)
        let skippSudduth = Photo(photoTitle: "Skipp Sudduth", image: UIImage(named: "celeb_skipp_sudduth")!)
        self.celebPhotos.add(skippSudduth)
        let peterGallagher = Photo(photoTitle: "Peter Gallagher", image: UIImage(named: "celeb_peter_gallagher")!)
        self.celebPhotos.add(peterGallagher)
        let kalPenn = Photo(photoTitle: "Kal Penn", image: UIImage(named: "celeb_Kal_Penn")!)
        self.celebPhotos.add(kalPenn)
        let joshuaBell = Photo(photoTitle: "Joshua Bell", image: UIImage(named: "celeb_joshua_bell")!)
        self.celebPhotos.add(joshuaBell)
        let johnHodgman = Photo(photoTitle: "John Hodgman", image: UIImage(named: "celeb_john_hodgman")!)
        self.celebPhotos.add(johnHodgman)
        let fredWesley = Photo(photoTitle: "Fred Wesley", image: UIImage(named: "celeb_fred_wesley")!)
        self.celebPhotos.add(fredWesley)
        let zackWoods = Photo(photoTitle: "Zack Woods", image: UIImage(named: "celeb_zack_woods")!)
        self.celebPhotos.add(zackWoods)
        let jamesMcCaffrey = Photo(photoTitle: "James McCaffrey", image: UIImage(named: "celeb_james_mccaffrey")!)
        self.celebPhotos.add(jamesMcCaffrey)
        let markGreen = Photo(photoTitle: "Mark Green", image: UIImage(named: "celeb_mark_green")!)
        self.celebPhotos.add(markGreen)
        let johnVentimiglia = Photo(photoTitle: "John Ventimiglia", image: UIImage(named: "celeb_john_ventimiglia")!)
        self.celebPhotos.add(johnVentimiglia)
        let mareWinningham = Photo(photoTitle: "Mare Winningham", image: UIImage(named: "celeb_mare_winningham")!)
        self.celebPhotos.add(mareWinningham)
        let jeffGoldblum = Photo(photoTitle: "Jeff Goldblum", image: UIImage(named: "celeb_jeff_goldblum")!)
        self.celebPhotos.add(jeffGoldblum)
        let michaelTucker = Photo(photoTitle: "Michael Tucker", image: UIImage(named: "celeb_michael_tucker")!)
        self.celebPhotos.add(michaelTucker)
        let philipSH = Photo(photoTitle: "Philip Seymour Hoffman", image: UIImage(named: "celeb_philip_seymour_hoffman")!)
        self.celebPhotos.add(philipSH)
        let smithByrd = Photo(photoTitle: "G.E. Smith and Ricky Byrd", image: UIImage(named: "celeb_ge_smith_ricky_byrd")!)
        self.celebPhotos.add(smithByrd)
        let michaelBadalucco = Photo(photoTitle: "Michael Badalucco", image: UIImage(named: "celeb_michael_badalucco")!)
        self.celebPhotos.add(michaelBadalucco)
        let oliviaWilde = Photo(photoTitle: "Olivia Wilde", image: UIImage(named: "celeb_olivia_wilde")!)
        self.celebPhotos.add(oliviaWilde)
        let dylanBaker = Photo(photoTitle: "Dylan Baker", image: UIImage(named: "celeb_Dylan_Baker")!)
        self.celebPhotos.add(dylanBaker)
        let mattJones = Photo(photoTitle: "Matt Jones", image: UIImage(named: "celeb_matt_jones")!)
        self.celebPhotos.add(mattJones)
        let davidCostabile = Photo(photoTitle: "David Costabile", image: UIImage(named: "celeb_david_costabile")!)
        self.celebPhotos.add(davidCostabile)
        let pabloSchreiber = Photo(photoTitle: "Pablo Schreiber", image: UIImage(named: "celeb_pabloschreiber")!)
        self.celebPhotos.add(pabloSchreiber)
        let rayKelly = Photo(photoTitle: "Ray Kelly", image: UIImage(named: "celeb_RayKelly")!)
        self.celebPhotos.add(rayKelly)
        let timAllen = Photo(photoTitle: "Tim Allen", image: UIImage(named: "celeb_tim_allen")!)
        self.celebPhotos.add(timAllen)
        let anthonyBourdain = Photo(photoTitle: "Anthony Bourdain", image: UIImage(named: "celeb_anthony_bourdain")!)
        self.celebPhotos.add(anthonyBourdain)
        let markBlum = Photo(photoTitle: "Mark Blum", image: UIImage(named: "celeb_mark_blum")!)
        self.celebPhotos.add(markBlum)
        let tobinBell = Photo(photoTitle: "Tobin Bell", image: UIImage(named: "celeb_tobin_bell")!)
        self.celebPhotos.add(tobinBell)
        let mikeColemeco = Photo(photoTitle: "Mike Colemeco", image: UIImage(named: "celeb_mike_colemeco")!)
        self.celebPhotos.add(mikeColemeco)
        let hankAzaria = Photo(photoTitle: "Hank Azaria", image: UIImage(named: "celeb_HankAzaria")!)
        self.celebPhotos.add(hankAzaria)
        let dennisChristopher = Photo(photoTitle: "Dennis Christopher", image: UIImage(named: "celeb_dennis_christopher")!)
        self.celebPhotos.add(dennisChristopher)
        let scottIan = Photo(photoTitle: "Scott Ian", image: UIImage(named: "celeb_scott_ian")!)
        self.celebPhotos.add(scottIan)
        let kool = Photo(photoTitle: "Robert \"Kool\" Bell", image: UIImage(named: "celeb_kool")!)
        self.celebPhotos.add(kool)
        let amauryNolasco = Photo(photoTitle: "Amaury Nolasco", image: UIImage(named: "celeb_Amaury_Nolasco")!)
        self.celebPhotos.add(amauryNolasco)
        let tayeIdina = Photo(photoTitle: "Taye Diggs and Idina Menzel", image: UIImage(named: "celeb_taye_idina")!)
        self.celebPhotos.add(tayeIdina)
        let spikeLee = Photo(photoTitle: "Spike Lee", image: UIImage(named: "celeb_spike_lee")!)
        self.celebPhotos.add(spikeLee)
        let aaronNeville = Photo(photoTitle: "Aaron Neville", image: UIImage(named: "celeb_aaron_neville")!)
        self.celebPhotos.add(aaronNeville)
        let stevePaymer = Photo(photoTitle: "Steve Paymer", image: UIImage(named: "celeb_steve_paymer")!)
        self.celebPhotos.add(stevePaymer)
        let johnSlattery = Photo(photoTitle: "John Slattery", image: UIImage(named: "celeb_john_slattery")!)
        self.celebPhotos.add(johnSlattery)
        let joannaCassidy = Photo(photoTitle: "Joanna Cassidy", image: UIImage(named: "celeb_Joanna_Cassidy")!)
        self.celebPhotos.add(joannaCassidy)
        let jeffGarlin = Photo(photoTitle: "Jeff Garlin", image: UIImage(named: "celeb_jeff_garlin")!)
        self.celebPhotos.add(jeffGarlin)
        let julianneNicholson = Photo(photoTitle: "Julianne Nicholson", image: UIImage(named: "celeb_julianne_nicholson")!)
        self.celebPhotos.add(julianneNicholson)
        let stephMarch = Photo(photoTitle: "Stephanie March", image: UIImage(named: "celeb_stephanie_march")!)
        self.celebPhotos.add(stephMarch)
        let angelaBellotte = Photo(photoTitle: "Angela Bellotte", image: UIImage(named: "celeb_angela_bellotte")!)
        self.celebPhotos.add(angelaBellotte)
        let cynthiaNixon = Photo(photoTitle: "Cynthia Nixon", image: UIImage(named: "celeb_cynthia_nixon")!)
        self.celebPhotos.add(cynthiaNixon)
        let jamieDrake = Photo(photoTitle: "Jamie Drake", image: UIImage(named: "celeb_jamie_drake")!)
        self.celebPhotos.add(jamieDrake)
        let tateDonovan = Photo(photoTitle: "Tate Donovan", image: UIImage(named: "celeb_tate_donovan")!)
        self.celebPhotos.add(tateDonovan)
        let susanSarandon = Photo(photoTitle: "Susan Sarandon", image: UIImage(named: "celeb_susan_sarandon")!)
        self.celebPhotos.add(susanSarandon)
        let dominic = Photo(photoTitle: "Dominic Chianese", image: UIImage(named: "celeb_dominic_chianese")!)
        self.celebPhotos.add(dominic)
        let johnDoman = Photo(photoTitle: "John Doman", image: UIImage(named: "celeb_john_doman")!)
        self.celebPhotos.add(johnDoman)
        let toniSenecal = Photo(photoTitle: "Toni Senecal", image: UIImage(named: "celeb_Toni-Senecal")!)
        self.celebPhotos.add(toniSenecal)
        let timothyBusfield = Photo(photoTitle: "Timothy Busfield", image: UIImage(named: "celeb_timothy_busfield")!)
        self.celebPhotos.add(timothyBusfield)
        let adrianMartinez = Photo(photoTitle: "Adrian Martinez", image: UIImage(named: "celeb_adrian_martinez")!)
        self.celebPhotos.add(adrianMartinez)
        let kenan = Photo(photoTitle: "Kenan Thompson", image: UIImage(named: "celeb_kenan_thompson")!)
        self.celebPhotos.add(kenan)
        let timothyHutton = Photo(photoTitle: "Timothy Hutton", image: UIImage(named: "celeb_timothy_hutton")!)
        self.celebPhotos.add(timothyHutton)
        let ronHoward = Photo(photoTitle: "Ron Howard", image: UIImage(named: "celeb_Ron_Howard")!)
        self.celebPhotos.add(ronHoward)
        let fMurray = Photo(photoTitle: "F. Murray Abraham", image: UIImage(named: "celeb_f_murray_abraham")!)
        self.celebPhotos.add(fMurray)
        let jDWalsh = Photo(photoTitle: "JD Walsh", image: UIImage(named: "celeb_jd_walsh")!)
        self.celebPhotos.add(jDWalsh)
        let ciara = Photo(photoTitle: "Ciara O'Callaghan", image: UIImage(named: "celeb_ciara_ocallaghan")!)
        self.celebPhotos.add(ciara)
        let gloria = Photo(photoTitle: "Gloria Reuben", image: UIImage(named: "celeb_gloria_reuben")!)
        self.celebPhotos.add(gloria)
        let nev = Photo(photoTitle: "Nev Schulman", image: UIImage(named: "celeb_Nev_Schulman")!)
        self.celebPhotos.add(nev)
        let mrG = Photo(photoTitle: "Mr. G", image: UIImage(named: "celeb_MrG")!)
        self.celebPhotos.add(mrG)
        let nicoleWill = Photo(photoTitle: "Nicole Laliberte and Will Janowitz", image: UIImage(named: "celeb_nicole_laliberte_will_janowitz")!)
        self.celebPhotos.add(nicoleWill)
        
    }

}






















































