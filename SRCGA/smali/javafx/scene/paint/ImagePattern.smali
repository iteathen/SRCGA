.class public final Ljavafx/scene/paint/ImagePattern;
.super Ljavafx/scene/paint/Paint;
.source "ImagePattern.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private height:D

.field private image:Ljavafx/scene/image/Image;

.field private platformPaint:Ljava/lang/Object;

.field private proportional:Z

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-class v0, Ljavafx/scene/paint/ImagePattern;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/paint/ImagePattern;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;)V
    .locals 7
    .param p1    # Ljavafx/scene/image/Image;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "image"
        .end annotation
    .end param

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/paint/Paint;-><init>()V

    .line 171
    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v2, Ljavafx/scene/paint/ImagePattern;->width:D

    .line 184
    move-object v2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v2, Ljavafx/scene/paint/ImagePattern;->height:D

    .line 197
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/ImagePattern;->proportional:Z

    .line 234
    move-object v2, v1

    if-nez v2, :cond_0

    .line 235
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Image must be non-null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Image not yet loaded"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/ImagePattern;->image:Ljavafx/scene/image/Image;

    .line 240
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/image/Image;DDDDZ)V
    .locals 16
    .param p1    # Ljavafx/scene/image/Image;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "image"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "x"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "y"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param
    .param p10    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "proportional"
        .end annotation
    .end param

    .prologue
    .line 257
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object/from16 v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "width":D
    move-wide/from16 v8, p8

    .local v8, "height":D
    move/from16 v10, p10

    .local v10, "proportional":Z
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/paint/Paint;-><init>()V

    .line 171
    move-object v11, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iput-wide v12, v11, Ljavafx/scene/paint/ImagePattern;->width:D

    .line 184
    move-object v11, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iput-wide v12, v11, Ljavafx/scene/paint/ImagePattern;->height:D

    .line 197
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Ljavafx/scene/paint/ImagePattern;->proportional:Z

    .line 259
    move-object v11, v1

    if-nez v11, :cond_0

    .line 260
    new-instance v11, Ljava/lang/NullPointerException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Image must be non-null."

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 261
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_1

    .line 262
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Image not yet loaded"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 264
    :cond_1
    move-object v11, v0

    move-object v12, v1

    iput-object v12, v11, Ljavafx/scene/paint/ImagePattern;->image:Ljavafx/scene/image/Image;

    .line 265
    move-object v11, v0

    move-wide v12, v2

    iput-wide v12, v11, Ljavafx/scene/paint/ImagePattern;->x:D

    .line 266
    move-object v11, v0

    move-wide v12, v4

    iput-wide v12, v11, Ljavafx/scene/paint/ImagePattern;->y:D

    .line 267
    move-object v11, v0

    move-wide v12, v6

    iput-wide v12, v11, Ljavafx/scene/paint/ImagePattern;->width:D

    .line 268
    move-object v11, v0

    move-wide v12, v8

    iput-wide v12, v11, Ljavafx/scene/paint/ImagePattern;->height:D

    .line 269
    move-object v11, v0

    move v12, v10

    iput-boolean v12, v11, Ljavafx/scene/paint/ImagePattern;->proportional:Z

    .line 270
    return-void
.end method


# virtual methods
.method acc_addListener(Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, p1

    .local v1, "platformChangeListener":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/paint/ImagePattern;->image:Ljavafx/scene/image/Image;

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v1

    .line 280
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 281
    return-void
.end method

.method acc_getPlatformPaint()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/ImagePattern;->acc_isMutable()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/ImagePattern;->platformPaint:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/paint/ImagePattern;->platformPaint:Ljava/lang/Object;

    .line 292
    sget-boolean v1, Ljavafx/scene/paint/ImagePattern;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/ImagePattern;->platformPaint:Ljava/lang/Object;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 294
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/ImagePattern;->platformPaint:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return-object v0
.end method

.method acc_isMutable()Z
    .locals 3

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/ImagePattern;->image:Ljavafx/scene/image/Image;

    invoke-interface {v1, v2}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->isAnimation(Ljavafx/scene/image/Image;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return v0
.end method

.method acc_removeListener(Lcom/sun/javafx/beans/event/AbstractNotifyListener;)V
    .locals 4

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, p1

    .local v1, "platformChangeListener":Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/paint/ImagePattern;->image:Ljavafx/scene/image/Image;

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v1

    .line 286
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 287
    return-void
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/ImagePattern;->height:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return-wide v0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/ImagePattern;->image:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return-object v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/ImagePattern;->width:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return-wide v0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/ImagePattern;->x:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return-wide v0
.end method

.method public final getY()D
    .locals 3

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/ImagePattern;->y:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return-wide v0
.end method

.method public final isOpaque()Z
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/ImagePattern;->acc_getPlatformPaint()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/paint/ImagePattern;

    invoke-virtual {v1}, Lcom/sun/prism/paint/ImagePattern;->isOpaque()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return v0
.end method

.method public final isProportional()Z
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/ImagePattern;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/paint/ImagePattern;->proportional:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/ImagePattern;
    return v0
.end method
