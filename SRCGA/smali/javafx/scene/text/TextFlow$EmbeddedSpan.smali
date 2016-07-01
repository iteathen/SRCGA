.class Ljavafx/scene/text/TextFlow$EmbeddedSpan;
.super Ljava/lang/Object;
.source "TextFlow.java"

# interfaces
.implements Lcom/sun/javafx/scene/text/TextSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/text/TextFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmbeddedSpan"
.end annotation


# instance fields
.field bounds:Lcom/sun/javafx/geom/RectBounds;

.field node:Ljavafx/scene/Node;


# direct methods
.method public constructor <init>(Ljavafx/scene/Node;DDD)V
    .locals 20

    .prologue
    .line 306
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    move-object/from16 v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "baseline":D
    move-wide/from16 v4, p4

    .local v4, "width":D
    move-wide/from16 v6, p6

    .local v6, "height":D
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 307
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Ljavafx/scene/text/TextFlow$EmbeddedSpan;->node:Ljavafx/scene/Node;

    .line 308
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    move-wide v12, v2

    neg-double v12, v12

    double-to-float v12, v12

    move-wide v13, v4

    double-to-float v13, v13

    move-wide v14, v6

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    double-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    iput-object v9, v8, Ljavafx/scene/text/TextFlow$EmbeddedSpan;->bounds:Lcom/sun/javafx/geom/RectBounds;

    .line 310
    return-void
.end method


# virtual methods
.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow$EmbeddedSpan;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    return-object v0
.end method

.method public getFont()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    return-object v0
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/TextFlow$EmbeddedSpan;->node:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    const-string v1, "\ufffc"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/TextFlow$EmbeddedSpan;
    return-object v0
.end method
