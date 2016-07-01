.class Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;
.super Ljava/lang/Object;
.source "ListViewSkin.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ListViewSkin;
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
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ListViewSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;, "Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TT;>;"
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v3

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 185
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellDirty(I)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .line 202
    .end local v2    # "i":I
    :cond_1
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->rowCountDirty:Z

    .line 205
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ListView;

    invoke-virtual {v3}, Ljavafx/scene/control/ListView;->requestLayout()V

    .line 206
    return-void

    .line 189
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ListViewSkin;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 196
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ListViewSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ListViewSkin;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ListViewSkin;->access$002(Lcom/sun/javafx/scene/control/skin/ListViewSkin;I)I

    move-result v3

    .line 197
    goto :goto_1
.end method
