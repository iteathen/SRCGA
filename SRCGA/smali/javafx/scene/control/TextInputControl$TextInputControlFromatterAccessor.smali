.class Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
.super Ljava/lang/Object;
.source "TextInputControl.java"

# interfaces
.implements Lcom/sun/javafx/scene/control/FormatterAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputControlFromatterAccessor"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TextInputControl;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TextInputControl;)V
    .locals 4

    .prologue
    .line 1601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextInputControl$1;)V
    .locals 5

    .prologue
    .line 1601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/control/TextInputControl$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;-><init>(Ljavafx/scene/control/TextInputControl;)V

    return-void
.end method


# virtual methods
.method public getAnchor()I
    .locals 2

    .prologue
    .line 1619
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getAnchor()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    return v0
.end method

.method public getCaret()I
    .locals 2

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getCaretPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    return v0
.end method

.method public getText(II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    move v1, p1

    .local v1, "begin":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;->this$0:Ljavafx/scene/control/TextInputControl;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextInputControl;->getText(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    return-object v0
.end method

.method public getTextLength()I
    .locals 2

    .prologue
    .line 1604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->getLength()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextInputControlFromatterAccessor;
    return v0
.end method
