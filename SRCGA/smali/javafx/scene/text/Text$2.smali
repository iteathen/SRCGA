.class Ljavafx/scene/text/Text$2;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/Text;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/Text;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/StringPropertyBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$2;
    const-string v1, "text"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$2;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v2}, Ljavafx/scene/text/Text;->access$200(Ljavafx/scene/text/Text;)V

    .line 390
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setImpl_selectionStart(I)V

    .line 391
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setImpl_selectionEnd(I)V

    .line 392
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setImpl_caretPosition(I)V

    .line 393
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setImpl_caretBias(Z)V

    .line 399
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text$2;->get()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 400
    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text$2;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    move-object v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text$2;->set(Ljava/lang/String;)V

    .line 403
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$2;->this$0:Ljavafx/scene/text/Text;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 404
    return-void
.end method
