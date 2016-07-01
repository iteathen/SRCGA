.class final Ljavafx/stage/Screen$1;
.super Ljava/lang/Object;
.source "Screen.java"

# interfaces
.implements Lcom/sun/javafx/stage/ScreenHelper$ScreenAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRenderScale(Ljavafx/stage/Screen;)F
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Screen$1;
    move-object v1, p1

    .local v1, "screen":Ljavafx/stage/Screen;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/stage/Screen;->access$000(Ljavafx/stage/Screen;)F

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/stage/Screen$1;
    return v0
.end method
