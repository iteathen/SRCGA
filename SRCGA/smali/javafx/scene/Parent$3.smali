.class Ljavafx/scene/Parent$3;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Parent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Parent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Parent;


# direct methods
.method constructor <init>(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Parent$3;->this$0:Ljavafx/scene/Parent;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent$3;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/String;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent$3;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 1150
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1154
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent$3;->this$0:Ljavafx/scene/Parent;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/StyleManager;->stylesheetsChanged(Ljavafx/scene/Parent;Ljavafx/collections/ListChangeListener$Change;)V

    .line 1158
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 1159
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1160
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1161
    goto :goto_0

    .line 1166
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent$3;->this$0:Ljavafx/scene/Parent;

    invoke-virtual {v3}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    .line 1168
    :cond_1
    return-void
.end method
