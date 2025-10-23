select id,updated_at, {{ to_ist('updated_at') }} as updated_at_ist
from {{ source('IDEON_RAW', 'PLANS') }}
where updated_at <= '2025-01-15'