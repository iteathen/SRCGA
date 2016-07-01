.class Ljavafx/fxml/FXMLLoader$Element$1;
.super Ljava/lang/Object;
.source "FXMLLoader.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/fxml/FXMLLoader$Element;->processPropertyHandler(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Ljavafx/fxml/FXMLLoader$Element;

.field final synthetic val$handler:Ljavafx/fxml/FXMLLoader$MethodHandler;


# direct methods
.method constructor <init>(Ljavafx/fxml/FXMLLoader$Element;Ljavafx/fxml/FXMLLoader$MethodHandler;)V
    .locals 5

    .prologue
    .line 710
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element$1;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/fxml/FXMLLoader$Element;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$Element$1;->this$1:Ljavafx/fxml/FXMLLoader$Element;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$Element$1;->val$handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
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
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object/from16 v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element$1;->val$handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const/4 v7, 0x0

    new-instance v8, Ljavafx/event/Event;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$Element$1;->this$1:Ljavafx/fxml/FXMLLoader$Element;

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    invoke-direct {v9, v10, v11, v12}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    aput-object v8, v6, v7

    invoke-virtual {v4, v5}, Ljavafx/fxml/FXMLLoader$MethodHandler;->invoke([Ljava/lang/Object;)V

    .line 714
    return-void
.end method
