.class Ljavafx/animation/Animation$4;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/animation/Animation;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/Animation;


# direct methods
.method constructor <init>(Ljavafx/animation/Animation;I)V
    .locals 5

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/animation/Animation;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/animation/Animation$4;->this$0:Ljavafx/animation/Animation;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$4;->this$0:Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$4;
    const-string v1, "cycleCount"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$4;->this$0:Ljavafx/animation/Animation;

    invoke-static {v1}, Ljavafx/animation/Animation;->access$1100(Ljavafx/animation/Animation;)V

    .line 589
    return-void
.end method
