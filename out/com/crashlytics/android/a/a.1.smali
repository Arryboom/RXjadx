.class public Lcom/crashlytics/android/a/a;
.super Lcom/crashlytics/android/a/C;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/crashlytics/android/a/C<",
        "Lcom/crashlytics/android/a/a;",
        ">;"
    }
.end annotation


# static fields
.field static final c:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    const-wide/32 v0, 0xf4240

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/a/a;->c:Ljava/math/BigDecimal;

    return-void
.end method
