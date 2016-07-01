.class Lcom/sun/prism/impl/packrect/Level;
.super Ljava/lang/Object;
.source "Level.java"


# instance fields
.field length:I

.field private lengthOffset:I

.field size:I

.field private sizeOffset:I


# direct methods
.method constructor <init>(III)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/Level;
    move v1, p1

    .local v1, "length":I
    move v2, p2

    .local v2, "size":I
    move v3, p3

    .local v3, "sizeOffset":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/prism/impl/packrect/Level;->length:I

    .line 38
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/prism/impl/packrect/Level;->size:I

    .line 39
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/prism/impl/packrect/Level;->sizeOffset:I

    .line 40
    return-void
.end method


# virtual methods
.method add(Lcom/sun/javafx/geom/Rectangle;IIIIZ)Z
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/packrect/Level;
    move-object v1, p1

    .local v1, "rect":Lcom/sun/javafx/geom/Rectangle;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "requestedLength":I
    move/from16 v5, p5

    .local v5, "requestedSize":I
    move/from16 v6, p6

    .local v6, "vertical":Z
    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/packrect/Level;->lengthOffset:I

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->length:I

    if-gt v7, v8, :cond_1

    move v7, v5

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->size:I

    if-gt v7, v8, :cond_1

    .line 48
    move v7, v6

    if-eqz v7, :cond_0

    .line 49
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->sizeOffset:I

    iput v8, v7, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 50
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->lengthOffset:I

    iput v8, v7, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 55
    :goto_0
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->lengthOffset:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sun/prism/impl/packrect/Level;->lengthOffset:I

    .line 58
    move-object v7, v1

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->x:I

    move v9, v2

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 59
    move-object v7, v1

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v9, v3

    add-int/2addr v8, v9

    iput v8, v7, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 60
    const/4 v7, 0x1

    move v0, v7

    .line 62
    .end local v0    # "this":Lcom/sun/prism/impl/packrect/Level;
    :goto_1
    return v0

    .line 52
    .restart local v0    # "this":Lcom/sun/prism/impl/packrect/Level;
    :cond_0
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->lengthOffset:I

    iput v8, v7, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 53
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/packrect/Level;->sizeOffset:I

    iput v8, v7, Lcom/sun/javafx/geom/Rectangle;->y:I

    goto :goto_0

    .line 62
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method
