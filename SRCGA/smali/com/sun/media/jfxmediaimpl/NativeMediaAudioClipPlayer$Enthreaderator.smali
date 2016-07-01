.class Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;
.super Ljava/lang/Object;
.source "NativeMediaAudioClipPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Enthreaderator"
.end annotation


# static fields
.field private static final schedulerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Thread;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->schedulerThread:Ljava/lang/Thread;

    .line 87
    sget-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->schedulerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 88
    sget-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->schedulerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->lambda$static$4()V

    return-void
.end method

.method public static getSchedulerThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->schedulerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private static synthetic lambda$static$4()V
    .locals 0

    .prologue
    .line 85
    # invokes: Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->clipScheduler()V
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->access$000()V

    .line 86
    return-void
.end method
