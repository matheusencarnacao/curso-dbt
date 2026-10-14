select
    id_concessionarias,
    {{ safe_trim('concessionaria') }} as concessionaria,
    id_cidades,
    data_inclusao,
    data_atualizacao,
    current_timestamp as _loaded_at
from pg_origem.public.concessionarias