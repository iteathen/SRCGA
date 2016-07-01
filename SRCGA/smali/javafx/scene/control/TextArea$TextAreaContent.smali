.class final Ljavafx/scene/control/TextArea$TextAreaContent;
.super Ljava/lang/Object;
.source "TextArea.java"

# interfaces
.implements Ljavafx/scene/control/TextInputControl$Content;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextAreaContent"
.end annotation


# instance fields
.field private contentLength:I

.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private paragraphList:Ljavafx/scene/control/TextArea$ParagraphList;

.field private paragraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 79
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    .line 80
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    .line 81
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TextArea$ParagraphList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/control/TextArea$ParagraphList;-><init>(Ljavafx/scene/control/TextArea$1;)V

    iput-object v2, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphList:Ljavafx/scene/control/TextArea$ParagraphList;

    .line 85
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 86
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphList:Ljavafx/scene/control/TextArea$ParagraphList;

    move-object v2, v0

    invoke-static {v1, v2}, Ljavafx/scene/control/TextArea$ParagraphList;->access$102(Ljavafx/scene/control/TextArea$ParagraphList;Ljavafx/scene/control/TextArea$TextAreaContent;)Ljavafx/scene/control/TextArea$TextAreaContent;

    move-result-object v1

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/TextArea$1;)V
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/TextArea$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextArea$TextAreaContent;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/control/TextArea$TextAreaContent;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/TextArea$TextAreaContent;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method static synthetic access$302(Ljavafx/scene/control/TextArea$TextAreaContent;Lcom/sun/javafx/collections/ListListenerHelper;)Lcom/sun/javafx/collections/ListListenerHelper;
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/collections/ListListenerHelper;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/TextArea$TextAreaContent;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TextArea$TextAreaContent;)Ljavafx/scene/control/TextArea$ParagraphList;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphList:Ljavafx/scene/control/TextArea$ParagraphList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method private fireParagraphListChangeEvent(IILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljavafx/scene/control/TextArea$ParagraphListChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphList:Ljavafx/scene/control/TextArea$ParagraphList;

    move v8, v1

    move v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/control/TextArea$ParagraphListChange;-><init>(Ljavafx/collections/ObservableList;IILjava/util/List;)V

    move-object v4, v5

    .line 325
    .local v4, "change":Ljavafx/scene/control/TextArea$ParagraphListChange;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TextArea$TextAreaContent;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v6, v4

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 326
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 317
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, p1

    .local v1, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 305
    return-void
.end method

.method public delete(IIZ)V
    .locals 25

    .prologue
    .line 213
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move/from16 v3, p1

    .local v3, "start":I
    move/from16 v4, p2

    .local v4, "end":I
    move/from16 v5, p3

    .local v5, "notifyListeners":Z
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 214
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 217
    :cond_0
    move/from16 v19, v3

    if-ltz v19, :cond_1

    move/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 219
    :cond_1
    new-instance v19, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v19

    .line 222
    :cond_2
    move/from16 v19, v4

    move/from16 v20, v3

    sub-int v19, v19, v20

    move/from16 v6, v19

    .line 224
    .local v6, "length":I
    move/from16 v19, v6

    if-lez v19, :cond_5

    .line 226
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v7, v19

    .line 227
    .local v7, "paragraphIndex":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v8, v19

    .line 229
    .local v8, "offset":I
    const/16 v19, 0x0

    move-object/from16 v9, v19

    .line 232
    .local v9, "paragraph":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v7, v7, -0x1

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    .line 233
    move/from16 v19, v8

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    sub-int v19, v19, v20

    move/from16 v8, v19

    .line 234
    move/from16 v19, v4

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 236
    move/from16 v19, v7

    move/from16 v10, v19

    .line 237
    .local v10, "trailingParagraphIndex":I
    move/from16 v19, v8

    move/from16 v11, v19

    .line 238
    .local v11, "trailingOffset":I
    move-object/from16 v19, v9

    move-object/from16 v12, v19

    .line 241
    .local v12, "trailingParagraph":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v7, 0x1

    .line 242
    move/from16 v19, v8

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int v19, v19, v20

    move/from16 v8, v19

    .line 245
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v7, v7, -0x1

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    .line 246
    move/from16 v19, v8

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    sub-int v19, v19, v20

    move/from16 v8, v19

    .line 247
    move/from16 v19, v3

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 249
    move/from16 v19, v7

    move/from16 v13, v19

    .line 250
    .local v13, "leadingParagraphIndex":I
    move/from16 v19, v8

    move/from16 v14, v19

    .line 251
    .local v14, "leadingOffset":I
    move-object/from16 v19, v9

    move-object/from16 v15, v19

    .line 254
    .local v15, "leadingParagraph":Ljava/lang/StringBuilder;
    move/from16 v19, v13

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 256
    move-object/from16 v19, v15

    move/from16 v20, v3

    move/from16 v21, v14

    sub-int v20, v20, v21

    move/from16 v21, v4

    move/from16 v22, v14

    sub-int v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 259
    move-object/from16 v19, v2

    move/from16 v20, v13

    move/from16 v21, v13

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v15

    .line 260
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 259
    invoke-direct/range {v19 .. v22}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    .line 288
    :goto_0
    move-object/from16 v19, v2

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v0, v20

    iget v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move/from16 v20, v0

    move/from16 v21, v6

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    .line 289
    move/from16 v19, v5

    if-eqz v19, :cond_5

    .line 290
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 293
    .end local v7    # "paragraphIndex":I
    .end local v8    # "offset":I
    .end local v9    # "paragraph":Ljava/lang/StringBuilder;
    .end local v10    # "trailingParagraphIndex":I
    .end local v11    # "trailingOffset":I
    .end local v12    # "trailingParagraph":Ljava/lang/StringBuilder;
    .end local v13    # "leadingParagraphIndex":I
    .end local v14    # "leadingOffset":I
    .end local v15    # "leadingParagraph":Ljava/lang/StringBuilder;
    :cond_5
    return-void

    .line 264
    .restart local v7    # "paragraphIndex":I
    .restart local v8    # "offset":I
    .restart local v9    # "paragraph":Ljava/lang/StringBuilder;
    .restart local v10    # "trailingParagraphIndex":I
    .restart local v11    # "trailingOffset":I
    .restart local v12    # "trailingParagraph":Ljava/lang/StringBuilder;
    .restart local v13    # "leadingParagraphIndex":I
    .restart local v14    # "leadingOffset":I
    .restart local v15    # "leadingParagraph":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v19, v15

    const/16 v20, 0x0

    move/from16 v21, v3

    move/from16 v22, v14

    sub-int v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v16, v19

    .line 266
    .local v16, "leadingSegment":Ljava/lang/CharSequence;
    move/from16 v19, v3

    move/from16 v20, v6

    add-int v19, v19, v20

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 268
    .local v17, "trailingSegmentLength":I
    move-object/from16 v19, v12

    const/16 v20, 0x0

    move/from16 v21, v17

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 269
    move-object/from16 v19, v2

    move/from16 v20, v10

    move/from16 v21, v10

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v12

    .line 270
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 269
    invoke-direct/range {v19 .. v22}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    .line 272
    move/from16 v19, v10

    move/from16 v20, v13

    sub-int v19, v19, v20

    if-lez v19, :cond_7

    .line 273
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move/from16 v22, v13

    move/from16 v23, v10

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v19

    .line 275
    .local v18, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v20, v13

    move/from16 v21, v10

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    .line 276
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 277
    move-object/from16 v19, v2

    move/from16 v20, v13

    move/from16 v21, v13

    move-object/from16 v22, v18

    invoke-direct/range {v19 .. v22}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    .line 282
    .end local v18    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_7
    move-object/from16 v19, v12

    const/16 v20, 0x0

    move-object/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 283
    move-object/from16 v19, v2

    move/from16 v20, v13

    move/from16 v21, v13

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v15

    .line 284
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 283
    invoke-direct/range {v19 .. v22}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextArea$TextAreaContent;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TextArea$TextAreaContent;->get(II)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method public get(II)Ljava/lang/String;
    .locals 14

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    move v3, v10

    .line 91
    .local v3, "length":I
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move v12, v3

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v10

    .line 93
    .local v4, "textBuilder":Ljava/lang/StringBuilder;
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v10

    .line 95
    .local v5, "paragraphCount":I
    const/4 v10, 0x0

    move v6, v10

    .line 96
    .local v6, "paragraphIndex":I
    move v10, v1

    move v7, v10

    .line 98
    .local v7, "offset":I
    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_0

    .line 99
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    move-object v8, v10

    .line 100
    .local v8, "paragraph":Ljava/lang/StringBuilder;
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v9, v10

    .line 102
    .local v9, "count":I
    move v10, v7

    move v11, v9

    if-ge v10, v11, :cond_1

    .line 103
    .line 112
    .end local v8    # "paragraph":Ljava/lang/StringBuilder;
    .end local v9    # "count":I
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    move-object v8, v10

    .line 114
    .restart local v8    # "paragraph":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    move v9, v10

    .line 115
    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v3

    if-ge v10, v11, :cond_3

    .line 116
    move v10, v7

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ne v10, v11, :cond_2

    move v10, v9

    move-object v11, v0

    iget v11, v11, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    if-ge v10, v11, :cond_2

    .line 118
    move-object v10, v4

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 119
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    move-object v8, v10

    .line 120
    const/4 v10, 0x0

    move v7, v10

    .line 125
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 106
    .local v9, "count":I
    :cond_1
    move v10, v7

    move v11, v9

    sub-int/2addr v10, v11

    move v7, v10

    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    goto :goto_0

    .line 122
    .local v9, "i":I
    :cond_2
    move-object v10, v4

    move-object v11, v8

    move v12, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    goto :goto_2

    .line 128
    :cond_3
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextArea$TextAreaContent;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextArea$TextAreaContent;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    return-object v0
.end method

.method public insert(ILjava/lang/String;Z)V
    .locals 23

    .prologue
    .line 134
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move/from16 v3, p1

    .local v3, "index":I
    move-object/from16 v4, p2

    .local v4, "text":Ljava/lang/String;
    move/from16 v5, p3

    .local v5, "notifyListeners":Z
    move/from16 v17, v3

    if-ltz v17, :cond_0

    move/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 136
    :cond_0
    new-instance v17, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v17

    .line 139
    :cond_1
    move-object/from16 v17, v4

    if-nez v17, :cond_2

    .line 140
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 142
    :cond_2
    move-object/from16 v17, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Ljavafx/scene/control/TextInputControl;->filterInput(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    .line 143
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v6, v17

    .line 144
    .local v6, "length":I
    move/from16 v17, v6

    if-lez v17, :cond_6

    .line 146
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v17

    .line 148
    .local v7, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x20

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v8, v17

    .line 149
    .local v8, "line":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "i":I
    :goto_0
    move/from16 v17, v9

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 150
    move-object/from16 v17, v4

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v10, v17

    .line 152
    .local v10, "c":C
    move/from16 v17, v10

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 153
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 154
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x20

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v8, v17

    .line 149
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 156
    :cond_3
    move-object/from16 v17, v8

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    goto :goto_1

    .line 160
    .end local v10    # "c":C
    :cond_4
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 164
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v9, v17

    .line 165
    .local v9, "paragraphIndex":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v10, v17

    .line 167
    .local v10, "offset":I
    const/16 v17, 0x0

    move-object/from16 v11, v17

    .line 170
    .local v11, "paragraph":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v9, v9, -0x1

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    .line 171
    move/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    move/from16 v10, v17

    .line 172
    move/from16 v17, v3

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 174
    move/from16 v17, v3

    move/from16 v18, v10

    sub-int v17, v17, v18

    move/from16 v12, v17

    .line 176
    .local v12, "start":I
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v13, v17

    .line 177
    .local v13, "n":I
    move/from16 v17, v13

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 180
    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v8

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 181
    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v20, v11

    .line 182
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 181
    invoke-direct/range {v17 .. v20}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    .line 205
    :goto_2
    move-object/from16 v17, v2

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v0, v18

    iget v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move/from16 v18, v0

    move/from16 v19, v6

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    .line 206
    move/from16 v17, v5

    if-eqz v17, :cond_6

    .line 207
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 210
    .end local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    .end local v8    # "line":Ljava/lang/StringBuilder;
    .end local v9    # "paragraphIndex":I
    .end local v10    # "offset":I
    .end local v11    # "paragraph":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    .end local v13    # "n":I
    :cond_6
    return-void

    .line 186
    .restart local v7    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    .restart local v8    # "line":Ljava/lang/StringBuilder;
    .restart local v9    # "paragraphIndex":I
    .restart local v10    # "offset":I
    .restart local v11    # "paragraph":Ljava/lang/StringBuilder;
    .restart local v12    # "start":I
    .restart local v13    # "n":I
    :cond_7
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v14, v17

    .line 187
    .local v14, "end":I
    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v15, v17

    .line 188
    .local v15, "trailingText":Ljava/lang/CharSequence;
    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 192
    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/StringBuilder;

    move-object/from16 v16, v17

    .line 193
    .local v16, "first":Ljava/lang/StringBuilder;
    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 194
    move-object/from16 v17, v8

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 195
    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v20, v11

    .line 196
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 195
    invoke-direct/range {v17 .. v20}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    .line 199
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/control/TextArea$TextAreaContent;->paragraphs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v19, v7

    const/16 v20, 0x1

    move/from16 v21, v13

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v17

    .line 200
    move-object/from16 v17, v2

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v9

    move/from16 v20, v13

    add-int v19, v19, v20

    sget-object v20, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v17 .. v20}, Ljavafx/scene/control/TextArea$TextAreaContent;->fireParagraphListChangeEvent(IILjava/util/List;)V

    goto/16 :goto_2
.end method

.method public length()I
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/TextArea$TextAreaContent;->contentLength:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    return v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 321
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$TextAreaContent;
    move-object v1, p1

    .local v1, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextArea$TextAreaContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 309
    return-void
.end method
