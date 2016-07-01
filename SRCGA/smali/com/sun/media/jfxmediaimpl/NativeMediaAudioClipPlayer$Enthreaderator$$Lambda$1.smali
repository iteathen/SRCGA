.class final synthetic Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final instance:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;->instance:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;->instance:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    # invokes: Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->lambda$static$4()V
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->access$lambda$0()V

    return-void
.end method
