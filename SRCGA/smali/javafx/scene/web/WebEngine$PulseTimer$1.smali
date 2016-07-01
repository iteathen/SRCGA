.class final Ljavafx/scene/web/WebEngine$PulseTimer$1;
.super Ljavafx/animation/AnimationTimer;
.source "WebEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebEngine$PulseTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebEngine$PulseTimer$1;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/AnimationTimer;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(J)V
    .locals 0
    .param p1, "l"    # J

    .prologue
    .line 953
    return-void
.end method
