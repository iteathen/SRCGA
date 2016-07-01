.class Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;
.super Ljava/lang/Object;
.source "MultiplePropertyChangeListenerHandler.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;->this$0:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;
    move-object v1, p1

    .local v1, "property":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;->this$0:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->access$100(Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;)Ljavafx/util/Callback;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;->this$0:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->access$000(Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;)Ljava/util/Map;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    return-void
.end method
