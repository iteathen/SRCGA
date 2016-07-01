.class final Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;
.super Ljava/lang/Object;
.source "IOSPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IOSPlatformInitializer"
.end annotation


# static fields
.field private static final globalInstance:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;-><init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$1;)V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;

    return-object v0
.end method
