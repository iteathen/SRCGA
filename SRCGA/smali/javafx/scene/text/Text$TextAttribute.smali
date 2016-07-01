.class final Ljavafx/scene/text/Text$TextAttribute;
.super Ljava/lang/Object;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextAttribute"
.end annotation


# instance fields
.field private baselineOffset:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private impl_caretBias:Ljavafx/beans/property/BooleanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private impl_caretBinding:Ljavafx/beans/binding/ObjectBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/ObjectBinding",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private impl_caretPosition:Ljavafx/beans/property/IntegerProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private impl_caretShape:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private impl_selectionBinding:Ljavafx/beans/binding/ObjectBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/ObjectBinding",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private impl_selectionShape:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private impl_selectionStart:Ljavafx/beans/property/IntegerProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private lineSpacing:Ljavafx/beans/property/DoubleProperty;

.field private selectionFill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private strikethrough:Ljavafx/beans/property/BooleanProperty;

.field private textAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field

.field private textOrigin:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/text/Text;

.field private underline:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method private constructor <init>(Ljavafx/scene/text/Text;)V
    .locals 4

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/Text$1;)V
    .locals 5

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/text/Text;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/text/Text$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$TextAttribute;-><init>(Ljavafx/scene/text/Text;)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->underline:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->strikethrough:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/binding/ObjectBinding;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBinding:Ljavafx/beans/binding/ObjectBinding;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/binding/ObjectBinding;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionBinding:Ljavafx/beans/binding/ObjectBinding;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStart:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPosition:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBias:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 1530
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textOrigin:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method


# virtual methods
.method public final baselineOffsetProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 8

    .prologue
    .line 1667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->baselineOffset:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 1668
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    const-string v6, "baselineOffset"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/text/Text$TextAttribute$6;-><init>(Ljavafx/scene/text/Text$TextAttribute;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->baselineOffset:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 1681
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->baselineOffset:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final getImpl_caretPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1803
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPosition:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPosition:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getImpl_selectionEnd()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1751
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getImpl_selectionStart()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1727
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStart:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStart:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getLineSpacing()D
    .locals 4

    .prologue
    .line 1639
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTextAlignment()Ljavafx/scene/text/TextAlignment;
    .locals 2

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;
    invoke-static {}, Ljavafx/scene/text/Text;->access$3500()Ljavafx/scene/text/TextAlignment;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/TextAlignment;

    goto :goto_0
.end method

.method public final getTextOrigin()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 1535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textOrigin:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;
    invoke-static {}, Ljavafx/scene/text/Text;->access$2900()Ljavafx/geometry/VPos;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textOrigin:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/VPos;

    goto :goto_0
.end method

.method public final impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1831
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBias:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1832
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    const-string v5, "impl_caretBias"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBias:Ljavafx/beans/property/BooleanProperty;

    .line 1835
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBias:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final impl_caretPositionProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1808
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPosition:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 1809
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$12;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute$12;-><init>(Ljavafx/scene/text/Text$TextAttribute;I)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPosition:Ljavafx/beans/property/IntegerProperty;

    .line 1818
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPosition:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1776
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretShape:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1777
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$11;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$TextAttribute$11;-><init>(Ljavafx/scene/text/Text$TextAttribute;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBinding:Ljavafx/beans/binding/ObjectBinding;

    .line 1792
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    const-string v5, "impl_caretShape"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretShape:Ljavafx/beans/property/ObjectProperty;

    .line 1793
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretShape:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBinding:Ljavafx/beans/binding/ObjectBinding;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1795
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretShape:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1756
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 1757
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute$10;-><init>(Ljavafx/scene/text/Text$TextAttribute;I)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;

    .line 1767
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEnd:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1709
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->selectionFill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1710
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 1711
    # getter for: Ljavafx/scene/text/Text;->DEFAULT_SELECTION_FILL:Ljavafx/scene/paint/Color;
    invoke-static {}, Ljavafx/scene/text/Text;->access$4000()Ljavafx/scene/paint/Color;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute$8;-><init>(Ljavafx/scene/text/Text$TextAttribute;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->selectionFill:Ljavafx/beans/property/ObjectProperty;

    .line 1719
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->selectionFill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1690
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionShape:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1691
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$TextAttribute$7;-><init>(Ljavafx/scene/text/Text$TextAttribute;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionBinding:Ljavafx/beans/binding/ObjectBinding;

    .line 1699
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/text/Text$TextAttribute;->this$0:Ljavafx/scene/text/Text;

    const-string v5, "impl_selectionShape"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionShape:Ljavafx/beans/property/ObjectProperty;

    .line 1700
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionShape:Ljavafx/beans/property/ObjectProperty;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionBinding:Ljavafx/beans/binding/ObjectBinding;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1702
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionShape:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1732
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStart:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 1733
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute$9;-><init>(Ljavafx/scene/text/Text$TextAttribute;I)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStart:Ljavafx/beans/property/IntegerProperty;

    .line 1743
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStart:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final isImpl_caretBias()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1826
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBias:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBias:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isStrikethrough()Z
    .locals 2

    .prologue
    .line 1582
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->strikethrough:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->strikethrough:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isUnderline()Z
    .locals 2

    .prologue
    .line 1557
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->underline:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->underline:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1643
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1644
    move-object v2, v1

    new-instance v3, Ljavafx/scene/text/Text$TextAttribute$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/text/Text$TextAttribute$5;-><init>(Ljavafx/scene/text/Text$TextAttribute;D)V

    iput-object v3, v2, Ljavafx/scene/text/Text$TextAttribute;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    .line 1661
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text$TextAttribute;->lineSpacing:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v1
.end method

.method public final strikethroughProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 1586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->strikethrough:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1587
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$TextAttribute$3;-><init>(Ljavafx/scene/text/Text$TextAttribute;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->strikethrough:Ljavafx/beans/property/BooleanProperty;

    .line 1601
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->strikethrough:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1612
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 1613
    # getter for: Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;
    invoke-static {}, Ljavafx/scene/text/Text;->access$3500()Ljavafx/scene/text/TextAlignment;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute$4;-><init>(Ljavafx/scene/text/Text$TextAttribute;Ljavafx/scene/text/TextAlignment;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 1633
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final textOriginProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textOrigin:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1540
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;
    invoke-static {}, Ljavafx/scene/text/Text;->access$2900()Ljavafx/geometry/VPos;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute$1;-><init>(Ljavafx/scene/text/Text$TextAttribute;Ljavafx/geometry/VPos;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->textOrigin:Ljavafx/beans/property/ObjectProperty;

    .line 1551
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->textOrigin:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method

.method public final underlineProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 1561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$TextAttribute;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->underline:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1562
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$TextAttribute$2;-><init>(Ljavafx/scene/text/Text$TextAttribute;)V

    iput-object v2, v1, Ljavafx/scene/text/Text$TextAttribute;->underline:Ljavafx/beans/property/BooleanProperty;

    .line 1576
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$TextAttribute;->underline:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$TextAttribute;
    return-object v0
.end method
