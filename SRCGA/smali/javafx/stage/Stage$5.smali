.class Ljavafx/stage/Stage$5;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/stage/Stage;->titleProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/Stage;


# direct methods
.method constructor <init>(Ljavafx/stage/Stage;)V
    .locals 4

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Stage;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Stage$5;->this$0:Ljavafx/stage/Stage;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$5;->this$0:Ljavafx/stage/Stage;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$5;
    const-string v1, "title"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$5;->this$0:Ljavafx/stage/Stage;

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 744
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$5;->this$0:Ljavafx/stage/Stage;

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Stage$5;->get()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/javafx/tk/TKStage;->setTitle(Ljava/lang/String;)V

    .line 746
    :cond_0
    return-void
.end method
