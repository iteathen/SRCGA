.class Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;
.super Ljava/lang/Object;
.source "FXMLLoader.java"

# interfaces
.implements Ljavafx/collections/SetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObservableSetChangeAdapter"
.end annotation


# instance fields
.field public final handler:Ljavafx/fxml/FXMLLoader$MethodHandler;


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V
    .locals 4

    .prologue
    .line 1729
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;
    move-object v1, p1

    .local v1, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1730
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;->handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    .line 1731
    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1735
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;->handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    if-eqz v2, :cond_0

    .line 1736
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;->handler:Ljavafx/fxml/FXMLLoader$MethodHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/fxml/FXMLLoader$MethodHandler;->invoke([Ljava/lang/Object;)V

    .line 1738
    :cond_0
    return-void
.end method
