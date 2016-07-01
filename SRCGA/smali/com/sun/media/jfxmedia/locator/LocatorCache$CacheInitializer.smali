.class Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;
.super Ljava/lang/Object;
.source "LocatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/LocatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheInitializer"
.end annotation


# static fields
.field private static final globalInstance:Lcom/sun/media/jfxmedia/locator/LocatorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/media/jfxmedia/locator/LocatorCache;-><init>(Lcom/sun/media/jfxmedia/locator/LocatorCache$1;)V

    sput-object v0, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;->globalInstance:Lcom/sun/media/jfxmedia/locator/LocatorCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sun/media/jfxmedia/locator/LocatorCache;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheInitializer;->globalInstance:Lcom/sun/media/jfxmedia/locator/LocatorCache;

    return-object v0
.end method
