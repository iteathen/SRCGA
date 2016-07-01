.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharKey"
.end annotation


# instance fields
.field private final altChars:Ljava/lang/String;

.field private final letterChars:Ljava/lang/String;

.field private final moreChars:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, p1

    move-object v2, p2

    .local v2, "letter":Ljava/lang/String;
    move-object v3, p3

    .local v3, "alt":Ljava/lang/String;
    move-object v4, p4

    .local v4, "moreChars":[Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V
    .locals 11

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, p1

    move-object v2, p2

    .local v2, "letter":Ljava/lang/String;
    move-object v3, p3

    .local v3, "alt":Ljava/lang/String;
    move-object v4, p4

    .local v4, "moreChars":[Ljava/lang/String;
    move-object v5, p5

    .local v5, "id":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    .line 762
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    .line 763
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    .line 764
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    .line 765
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    .line 767
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->text:Ljavafx/scene/text/Text;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 768
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altText:Ljavafx/scene/text/Text;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 769
    sget-boolean v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkLookup:Z

    if-eqz v6, :cond_0

    .line 770
    move-object v6, v0

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v5

    :goto_0
    const-string v8, "\\."

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->setId(Ljava/lang/String;)V

    .line 772
    :cond_0
    return-void

    .line 770
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V
    .locals 13

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "x3":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "x4":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "x5":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    return-object v0
.end method

.method static synthetic access$2400(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    return-object v0
.end method

.method static synthetic access$2500(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    return-object v0
.end method


# virtual methods
.method protected press()V
    .locals 3

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->press()V

    .line 780
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 781
    .line 788
    :goto_0
    return-void

    .line 783
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$100()Lcom/sun/javafx/scene/control/skin/FXVK;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 784
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)V

    .line 785
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$2002(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-result-object v1

    .line 786
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKDelay:Ljavafx/animation/Timeline;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$2100()Ljavafx/animation/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 788
    :cond_1
    goto :goto_0
.end method

.method protected release()V
    .locals 3

    .prologue
    .line 791
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->release()V

    .line 792
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 793
    .line 798
    :goto_0
    return-void

    .line 795
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$100()Lcom/sun/javafx/scene/control/skin/FXVK;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 796
    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKDelay:Ljavafx/animation/Timeline;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$2100()Ljavafx/animation/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 798
    :cond_1
    goto :goto_0
.end method

.method public update(ZZZ)V
    .locals 7

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move v1, p1

    .local v1, "capsDown":Z
    move v2, p2

    .local v2, "shiftDown":Z
    move v3, p3

    .local v3, "isSymbol":Z
    move v4, v3

    if-eqz v4, :cond_1

    .line 802
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    .line 803
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->text:Ljavafx/scene/text/Text;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 804
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 805
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altText:Ljavafx/scene/text/Text;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->moreChars:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 814
    :goto_0
    return-void

    .line 807
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altText:Ljavafx/scene/text/Text;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_1
    move-object v4, v0

    move v5, v1

    if-nez v5, :cond_2

    move v5, v2

    if-eqz v5, :cond_3

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    .line 811
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->text:Ljavafx/scene/text/Text;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->chars:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 812
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altText:Ljavafx/scene/text/Text;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->altChars:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->letterChars:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
