.class Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;
.super Ljava/lang/Object;
.source "FXMLLoader.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyChangeAdapter"
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
.field public final handler:Ljavafx/fxml/FXMLLoader$MethodHandler;


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V
    .locals 4

    .prologue
    .line 1745
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;
    move-object v1, p1

    .local v1, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1746
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;->handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    .line 1747
    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1751
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;->handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-virtual {v4, v5}, Ljavafx/fxml/FXMLLoader$MethodHandler;->invoke([Ljava/lang/Object;)V

    .line 1752
    return-void
.end method
