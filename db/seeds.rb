# encoding: utf-8
#Dir[Rails.root.join("app/models/**/*.rb")].each {|f| require f}

atributos = {
  :titulo => "Cooperação e articulação para promoção do acesso universal à alimentação adequada e saudável.",
  :eixos =>  [
    {
      :texto => "Articulação para a realização de ações intra e intersetoriais",
      :acoes => [
        { 
          :texto => "1. Promover parcerias com demais setores da municipalidade, instituições e organizações não-governamentais para a promoção do acesso a alimentação saudável.",
          :estrategias => [
              "1.1. Promover articulação com ações de geração de emprego e de renda.",
              "1.2. Incentivar, ampliar e divulgar espaços públicos para a comercialização de alimentos saudáveis com melhor distribuição pela cidade (feiras orgânicas, feiras livres, sacolões volantes).",
              "1.3. Incentivar que os serviços de alimentação e nutrição privados ofereçam alimentação saudável.",
              "1.4. Incentivar e apoiar a implantação de hortas domésticas, institucionais e coletivas.",
              "1.5. Apoiar o fortalecimento dos núcleos rurais de produção agropecuária existentes na cidade do Rio de Janeiro, incentivando a produção em bases agroecológicas.",
              "1.6. Estimular o acesso ao Programa de Aquisição de Alimentos em suas diferentes modalidades em instituições filantrópicas."
            ],
            :atores => [
              "1..1. SMSDC, INAD, SMAS, SMTE, SEDES, organizações não-governamentais.",
              "1.2. SMSDC, INAD, SEDES, SMF, organizações não-governamentais.",
              "1.3. SMSDC, INAD, sindicatos de bares e restaurantes.",
              "1.4. SMSDC, INAD, SMAS, SME, SMAC, organizações não-governamentais.",
              "1.5. Coordenadoria Especial de Agricultura e Abastecimento, EMATER, CSAFM/ECAF, SMAC, organizações de agricultores.",
              "1.6. SMAS, INAD, CONAB, instituições filantrópicas."
            ]            
          }
       ]
    },
    {
      :texto => "Universalização e aprimoramento dos programas de alimentação e nutrição",
      :acoes => [
        { 
          :texto => "1. Incentivar, apoiar e fortalecer os programas de alimentação e nutrição desenvolvidos na municipalidade, como PNAE, PAT, Cozinhas Comunitárias.",
          :estrategias => [
              "1.1. Estimular a adesão dos beneficiários aos programas e serviços de alimentação e nutrição.",
              "1.2. Apoiar a qualificação dos programas e serviços de alimentação e nutrição.",
              "1.3. Orientar a adequação de equipamentos e área física às necessidades dos programas e serviços de alimentação e nutrição.",
              "1.4. Implementar programas de redução do desperdício de alimentos.",
              "1.5. Garantir profissionais qualificados em quantidade adequada para o desenvolvimento dos programas e serviços de alimentação e nutrição.",
              "1.6. Estruturar e fortalecer os mecanismos de planejamento e de acompanhamento das compras de genêros alimentícios.",
              "1.7. Incluir nos editais para aquisição de gêneros alimentícios ou de fornecimento de refeições a obrigatoriedade de compra direta de parte dos gêneros da agricultura familiar, preferencialmente agroecológicos e/ou orgânicos.",
              "1.8. Estimular o acesso ao Programa de Aquisição de Alimentos em suas diferentes modalidades para equipamentos e órgãos da prefeitura.",
              "1.9. Garantir a disponibilidade de água potável para consumo nos órgãos e equipamentos da prefeitura."
          ],
          :atores => [
            "1.1. INAD, SMSDC, SMAS, SME, SMA, SMPD, RIOZOO, SECONSERVA, SESQV, CGGA.",
            "1.2. a 1.4. INAD, SMSDC, SMAS, SME, SMA, SMPD, RIOZOO, SECONSERVA, SESQV.",
            "1.5. SMSDC, SMAS, SME, SMA, SMPD, RIOZOO, SECONSERVA, SESQV.",
            "1.6. a 1.7. CGGA, Vigilância Sanitária do município, INAD, SMSDC, SMAS, SME, SMA, SMPD, RIOZOO, SECONSERVA, SESQV.",
            "1.8. CGGA, SMAS, INAD, CONAB.",
            "1.9. PCRJ."
          ]
        },
        {
          :texto => "2. Garantir a disponibilidade a cardápios saudáveis que respeitem a cultura alimentar e a sazonalidade dos alimentos nos programas e serviços de alimentação e nutrição.",
          :estrategias => [
              "2.1. Garantir, nos planos alimentares, a diversidade de alimentos in natura priorizando alimentos produzidos no município.",
              "2.2. Garantir que os serviços de alimentação e nutrição públicos ofereçam alimentação saudável, que considere a cultura e os aspectos sensoriais da alimentação.",
              "2.3. Garantir termos de referência para as licitações dos programas e dos serviços de fornecimento de refeições, que contemplem as questões nutricionais, culturais, sociais e ambientais."
          ],
          :atores => [
              "2.1. e 2.2. INAD, SMSDC, SMAS, SME, SMA, SMPD, RIOZOO, SECONSERVA, SESQV.",
              "2.3. CGGA, INAD, SMSDC, SMAS, SME, SMA, SMPD, RIOZOO, SECONSERVA, SESQV."
          ]
        }
      ]
    },
    {
      :texto => "Atenção aos grupos populacionais  com necessidades alimentares especiais e em situações de desastres naturais",
      :acoes => [
        { 
          :texto => "1. Promover o acesso aos alimentos e às preparações que atendam às necessidades alimentares especiais.",
          :estrategias => [
              "1.1. Incentivar a comercialização dos alimentos adequados às necessidades  alimentares especiais em mercados, supermercados, bares, restaurantes e outros estabelecimentos.",
              "1.2. Garantir o cumprimento da legislação para a rotulagem de alimentos.",
              "1.3. Garantir a oferta dos alimentos adequados às necessidades alimentares especiais nos órgãos e equipamentos da PCRJ, com base em protocolos clínicos."
          ],
          :atores => [
              "1.1. SMSDC, INAD, organizações não-governamentais.",
              "1.2. Vigilância Sanitária do município, INAD.",
              "1.3. PCRJ."
          ]
        },
        {
          :texto => "2. Garantir a segurança alimentar e nutricional a populações em situação de desastres naturais.",
          :estrategias => [
              "2.1. Articular diferentes atores e planejar e implementar ações para garantir a segurança alimentar e nutricional das populações em situação de desastres naturais na cidade."
          ],
          :atores => [
              "2.1. PCRJ."
          ]          
        }
      ]
    }
  ]
}

p "Criando diretriz."
@diretriz = Diretriz.create! :titulo => atributos[:titulo]

atributos[:eixos].each do |eixo|
 p "Criando eixo."
 @eixo = @diretriz.eixos.create! :texto => eixo[:texto]
 eixo[:acoes].each do |acao|
   p "Criando ação."
   @acao = @eixo.acoes.create! :texto => acao[:texto]   
   acao[:estrategias].each do |est|
     p "Criando estrategia."
     @acao.estrategias.create! :texto => est
   end
   acao[:atores].each do |ator|
     p "Criando ator."
     @acao.atores.create! :texto => ator
   end
 end
end