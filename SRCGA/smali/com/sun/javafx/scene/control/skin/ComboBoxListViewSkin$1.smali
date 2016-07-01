.class Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;
.super Ljava/lang/Object;
.source "ComboBoxListViewSkin.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$002(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Z)Z

    move-result v2

    .line 94
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ComboBoxBase;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->requestLayout()V

    .line 95
    return-void
.end method
