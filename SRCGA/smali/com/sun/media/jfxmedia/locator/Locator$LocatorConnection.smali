.class Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
.super Ljava/lang/Object;
.source "Locator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/Locator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocatorConnection"
.end annotation


# instance fields
.field public connection:Ljava/net/HttpURLConnection;

.field public responseCode:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->connection:Ljava/net/HttpURLConnection;

    .line 127
    move-object v1, v0

    const/16 v2, 0xc8

    iput v2, v1, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;->responseCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator$1;)V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/Locator$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/Locator$LocatorConnection;-><init>()V

    return-void
.end method
