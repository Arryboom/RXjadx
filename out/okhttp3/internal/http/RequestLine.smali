.class public final Lokhttp3/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "Paramount"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method public static get(Lokhttp3/M;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokhttp3/M;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0, p1}, Lokhttp3/internal/http/RequestLine;->includeAuthorityInRequestLine(Lokhttp3/M;Ljava/net/Proxy$Type;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 5
    invoke-virtual {p0}, Lokhttp3/M;->g()Lokhttp3/E;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 6
    :cond_1f
    invoke-virtual {p0}, Lokhttp3/M;->g()Lokhttp3/E;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/E;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    const-string p0, " HTTP/1.1"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static includeAuthorityInRequestLine(Lokhttp3/M;Ljava/net/Proxy$Type;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lokhttp3/M;->d()Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static requestPath(Lokhttp3/E;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lokhttp3/E;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lokhttp3/E;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    return-object v0
.end method