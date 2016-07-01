.class Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
.super Ljava/lang/Object;
.source "NGExternalNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGExternalNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferData"
.end annotation


# instance fields
.field final linestride:I

.field final scale:I

.field final srcbounds:Lcom/sun/javafx/geom/Rectangle;

.field final srcbuffer:Ljava/nio/Buffer;

.field final usrheight:F

.field final usrwidth:F


# direct methods
.method constructor <init>(Ljava/nio/Buffer;IIIIIFFI)V
    .locals 19

    .prologue
    .line 151
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    move-object/from16 v1, p1

    .local v1, "srcbuffer":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "linestride":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "width":I
    move/from16 v6, p6

    .local v6, "height":I
    move/from16 v7, p7

    .local v7, "usrWidth":F
    move/from16 v8, p8

    .local v8, "usrHeight":F
    move/from16 v9, p9

    .local v9, "scale":I
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 152
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbuffer:Ljava/nio/Buffer;

    .line 153
    move-object v10, v0

    move v11, v9

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale:I

    .line 154
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->linestride:I

    .line 155
    move-object v10, v0

    move-object v11, v0

    new-instance v12, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    .line 156
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrwidth:F

    .line 157
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrheight:F

    .line 158
    return-void
.end method


# virtual methods
.method copyWithBounds(IIIIFF)Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    .locals 20

    .prologue
    .line 171
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move/from16 v4, p3

    .local v4, "width":I
    move/from16 v5, p4

    .local v5, "height":I
    move/from16 v6, p5

    .local v6, "usrWidth":F
    move/from16 v7, p6

    .local v7, "usrHeight":F
    new-instance v8, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbuffer:Ljava/nio/Buffer;

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->linestride:I

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale:I

    move/from16 v18, v0

    invoke-direct/range {v9 .. v18}, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;-><init>(Ljava/nio/Buffer;IIIIIFFI)V

    move-object v1, v8

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    return-object v1
.end method

.method scale(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 162
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 163
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 164
    move-object v2, v1

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->height:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->scale:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 165
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    return-object v0
.end method
