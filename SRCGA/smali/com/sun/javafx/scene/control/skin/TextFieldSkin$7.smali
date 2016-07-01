.class Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;
.super Ljava/lang/Object;
.source "TextFieldSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TextFieldSkin;-><init>(Ljavafx/scene/control/TextField;Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/input/MouseEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 17

    .prologue
    .line 343
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;
    move-object/from16 v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/TextField;

    move-object v3, v8

    .line 344
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/scene/text/Text;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/text/Text;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v8

    move-object v4, v8

    .line 345
    .local v4, "tp":Ljavafx/geometry/Point2D;
    new-instance v8, Ljavafx/geometry/Point2D;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    add-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v12}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v2

    .line 346
    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-static {v14}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->access$300(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)D

    move-result-wide v14

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    sub-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v5, v8

    .line 347
    .local v5, "p":Ljavafx/geometry/Point2D;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->access$100(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)Ljavafx/scene/text/Text;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->translateCaretPosition(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v8

    move-object v6, v8

    .line 348
    .local v6, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v8

    move v7, v8

    .line 349
    .local v7, "pos":I
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/TextField;->getAnchor()I

    move-result v8

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 351
    move-object v8, v3

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TextField;->getAnchor()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/TextField;->selectRange(II)V

    .line 353
    :cond_0
    move v8, v7

    if-lez v8, :cond_2

    .line 354
    move v8, v7

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->getAnchor()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 355
    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->getAnchor()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TextField;->getLength()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 357
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextFieldSkin$7;->this$0:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 359
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 360
    return-void
.end method
