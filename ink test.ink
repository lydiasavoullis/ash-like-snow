LIST TDNames = (P), (K), (T), (L), (C)
VAR name = C
->start
==start==
Who are you going to chose?
*[P]
Pandora gets questioned by Cas
->pandora_questions
*[K]
Kent gets questioned by Cas
->kent_questions
*[T]
Tali gets questioned by Cas
->tali_questions
*[L]
Lavender gets questioned by Cas
->lavender_questions

==kent_questions==
~TDNames-=K
~name = LIST_RANDOM(TDNames)
{name == T:->k_questions_t}
{name == P:->k_questions_p}
{name == L:->k_questions_l}
{name == C:->k_questions_c}
->end_scenario
==tali_questions==
~TDNames-=T
~name = LIST_RANDOM(TDNames)
{name == K:->t_questions_k}
{name == P:->t_questions_p}
{name == L:->t_questions_l}
{name == C:->t_questions_c}
->end_scenario
==pandora_questions==
~TDNames-=P
~name = LIST_RANDOM(TDNames)
{name == T:->p_questions_t}
{name == K:->p_questions_k}
{name == L:->p_questions_l}
{name == C:->p_questions_c}
->end_scenario
==lavender_questions==
~TDNames-=L
~name = LIST_RANDOM(TDNames)
{name == T:->l_questions_t}
{name == K:->l_questions_k}
{name == P:->l_questions_p}
{name == C:->l_questions_c}
->end_scenario
==cas_questions==
~TDNames-=C
~name = LIST_RANDOM(TDNames)
{name == T:->c_questions_t}
{name == K:->c_questions_k}
{name == L:->c_questions_l}
{name == P:->c_questions_p}
->end_scenario


//end of choices
//cas questions
==c_questions_t==
Tali gets questioned by Cas
->tali_questions
==c_questions_k==
Kent gets questioned by Cas
->kent_questions
==c_questions_p==
Pandora gets questioned by Cas
->pandora_questions
==c_questions_l==
Lavender gets questioned by Cas
->lavender_questions

//lavender questions
==l_questions_t==
Tali gets questioned by Lavender
->tali_questions
==l_questions_k==
Kent gets questioned by Lavender
->kent_questions
==l_questions_p==
Pandora gets questioned by Lavender
->pandora_questions
==l_questions_c==
Cas gets questioned by Lavender
->cas_questions

//Pandora questions
==p_questions_t==
Tali gets questioned by Pandora
->tali_questions
==p_questions_k==
Kent gets questioned by Pandora
->kent_questions
==p_questions_l==
Lavender gets questioned by Pandora
->lavender_questions
==p_questions_c==
Cas gets questioned by Pandora
->cas_questions

//Tali questions
==t_questions_l==
Lavender gets questioned by Tali
->lavender_questions
==t_questions_k==
Kent gets questioned by Tali
->kent_questions
==t_questions_p==
Pandora gets questioned by Tali
->pandora_questions
==t_questions_c==
Cas gets questioned by Tali
->cas_questions

//Kent questions
==k_questions_t==
Tali gets questioned by Kent
->tali_questions
==k_questions_p==
Pandora gets questioned by Kent
->pandora_questions
==k_questions_l==
Lavender gets questioned by Kent
->lavender_questions
==k_questions_c==
Cas gets questioned by Kent
->cas_questions


==end_scenario==
Everyone is questioned now
->END