.class final Lcom/zendesk/belvedere/j;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zendesk/belvedere/BelvedereIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zendesk/belvedere/BelvedereIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zendesk/belvedere/BelvedereIntent;
    .registers 4

    .line 2
    new-instance v0, Lcom/zendesk/belvedere/BelvedereIntent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zendesk/belvedere/BelvedereIntent;-><init>(Landroid/os/Parcel;Lcom/zendesk/belvedere/j;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/zendesk/belvedere/j;->createFromParcel(Landroid/os/Parcel;)Lcom/zendesk/belvedere/BelvedereIntent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/zendesk/belvedere/BelvedereIntent;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/zendesk/belvedere/BelvedereIntent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/zendesk/belvedere/j;->newArray(I)[Lcom/zendesk/belvedere/BelvedereIntent;

    move-result-object p1

    return-object p1
.end method
