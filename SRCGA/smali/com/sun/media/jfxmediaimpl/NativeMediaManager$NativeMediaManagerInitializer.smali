.class Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;
.super Ljava/lang/Object;
.source "NativeMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeMediaManagerInitializer"
.end annotation


# static fields
.field private static final globalInstance:Lcom/sun/media/jfxmediaimpl/NativeMediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    return-object v0
.end method
