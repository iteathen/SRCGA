.class synthetic Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;
.super Ljava/lang/Object;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 548
    invoke-static {}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->values()[Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    :try_start_0
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->READY:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PAUSED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STALLED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    sget-object v2, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->HALTED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto :goto_6
.end method
