select
    id_veiculos,
    {{ safe_trim('nome') }} as nome,
    {{ safe_trim('tipo') }} as tipo,
    cast(valor as decimal(10, 2)) as valor,
    data_inclusao,
    data_atualizacao,
    current_timestamp as _loaded_at
from pg_origem.public.veiculos