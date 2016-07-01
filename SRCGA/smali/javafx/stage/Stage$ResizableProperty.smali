.class Ljavafx/stage/Stage$ResizableProperty;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizableProperty"
.end annotation


# instance fields
.field private noInvalidate:Z

.field final synthetic this$0:Ljavafx/stage/Stage;


# direct methods
.method public constructor <init>(Ljavafx/stage/Stage;)V
    .locals 6

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$ResizableProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Stage$ResizableProperty;->this$0:Ljavafx/stage/Stage;

    .line 927
    move-object v2, v0

    move-object v3, v1

    const-string v4, "resizable"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 928
    return-void
.end method


# virtual methods
.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$ResizableProperty;
    move-object v1, p1

    .local v1, "rawObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Resizable property cannot be bound"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$ResizableProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Stage$ResizableProperty;->noInvalidate:Z

    if-eqz v1, :cond_0

    .line 939
    .line 945
    :goto_0
    return-void

    .line 941
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$ResizableProperty;->this$0:Ljavafx/stage/Stage;

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_1

    .line 942
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$ResizableProperty;->this$0:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->applyBounds()V

    .line 943
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage$ResizableProperty;->this$0:Ljavafx/stage/Stage;

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Stage$ResizableProperty;->get()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sun/javafx/tk/TKStage;->setResizable(Z)V

    .line 945
    :cond_1
    goto :goto_0
.end method

.method setNoInvalidate(Z)V
    .locals 4

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$ResizableProperty;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/stage/Stage$ResizableProperty;->noInvalidate:Z

    .line 932
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage$ResizableProperty;->set(Z)V

    .line 933
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/stage/Stage$ResizableProperty;->noInvalidate:Z

    .line 934
    return-void
.end method
