.class Ljavafx/scene/media/MediaPlayer$10;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;I)V
    .locals 5

    .prologue
    .line 1569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$10;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer$10;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1573
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$10;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$10;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$10;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$10;
    const-string v1, "cycleCount"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$10;
    return-object v0
.end method
