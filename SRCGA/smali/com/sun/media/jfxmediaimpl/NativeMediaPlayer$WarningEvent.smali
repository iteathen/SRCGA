.class Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningEvent"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 194
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;->source:Ljava/lang/Object;

    .line 195
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;->message:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;->source:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    return-object v0
.end method
