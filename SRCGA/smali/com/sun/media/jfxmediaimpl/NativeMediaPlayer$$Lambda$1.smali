.class final synthetic Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;->arg$1:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/function/Consumer;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/function/Consumer;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;->arg$1:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v3, v1

    check-cast v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$lambda$0(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;)V

    return-void
.end method
