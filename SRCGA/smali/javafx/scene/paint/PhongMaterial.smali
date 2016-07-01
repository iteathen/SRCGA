.class public Ljavafx/scene/paint/PhongMaterial;
.super Ljavafx/scene/paint/Material;
.source "PhongMaterial.java"


# instance fields
.field private bumpMap:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private bumpMapDirty:Z

.field private diffuseColor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private diffuseColorDirty:Z

.field private diffuseMap:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private diffuseMapDirty:Z

.field private oldBumpMap:Ljavafx/scene/image/Image;

.field private oldDiffuseMap:Ljavafx/scene/image/Image;

.field private oldSelfIlluminationMap:Ljavafx/scene/image/Image;

.field private oldSpecularMap:Ljavafx/scene/image/Image;

.field private peer:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

.field private final platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

.field private selfIlluminationMap:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private selfIlluminationMapDirty:Z

.field private specularColor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private specularColorDirty:Z

.field private specularMap:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private specularMapDirty:Z

.field private specularPower:Ljavafx/beans/property/DoubleProperty;

.field private specularPowerDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/paint/Material;-><init>()V

    .line 77
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseColorDirty:Z

    .line 78
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->specularColorDirty:Z

    .line 79
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->specularPowerDirty:Z

    .line 80
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseMapDirty:Z

    .line 81
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->specularMapDirty:Z

    .line 82
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->bumpMapDirty:Z

    .line 83
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapDirty:Z

    .line 210
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/paint/PhongMaterial$4;-><init>(Ljavafx/scene/paint/PhongMaterial;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 90
    move-object v1, v0

    sget-object v2, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-virtual {v1, v2}, Ljavafx/scene/paint/PhongMaterial;->setDiffuseColor(Ljavafx/scene/paint/Color;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/paint/Color;)V
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "diffuseColor":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/paint/Material;-><init>()V

    .line 77
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->diffuseColorDirty:Z

    .line 78
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularColorDirty:Z

    .line 79
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularPowerDirty:Z

    .line 80
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->diffuseMapDirty:Z

    .line 81
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularMapDirty:Z

    .line 82
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->bumpMapDirty:Z

    .line 83
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapDirty:Z

    .line 210
    move-object v2, v0

    new-instance v3, Ljavafx/scene/paint/PhongMaterial$4;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/paint/PhongMaterial$4;-><init>(Ljavafx/scene/paint/PhongMaterial;)V

    iput-object v3, v2, Ljavafx/scene/paint/PhongMaterial;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 100
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/paint/PhongMaterial;->setDiffuseColor(Ljavafx/scene/paint/Color;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/paint/Color;Ljavafx/scene/image/Image;Ljavafx/scene/image/Image;Ljavafx/scene/image/Image;Ljavafx/scene/image/Image;)V
    .locals 11

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "diffuseColor":Ljavafx/scene/paint/Color;
    move-object v2, p2

    .local v2, "diffuseMap":Ljavafx/scene/image/Image;
    move-object v3, p3

    .local v3, "specularMap":Ljavafx/scene/image/Image;
    move-object v4, p4

    .local v4, "bumpMap":Ljavafx/scene/image/Image;
    move-object/from16 v5, p5

    .local v5, "selfIlluminationMap":Ljavafx/scene/image/Image;
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/paint/Material;-><init>()V

    .line 77
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->diffuseColorDirty:Z

    .line 78
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->specularColorDirty:Z

    .line 79
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->specularPowerDirty:Z

    .line 80
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->diffuseMapDirty:Z

    .line 81
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->specularMapDirty:Z

    .line 82
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->bumpMapDirty:Z

    .line 83
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapDirty:Z

    .line 210
    move-object v6, v0

    new-instance v7, Ljavafx/scene/paint/PhongMaterial$4;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/scene/paint/PhongMaterial$4;-><init>(Ljavafx/scene/paint/PhongMaterial;)V

    iput-object v7, v6, Ljavafx/scene/paint/PhongMaterial;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 116
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/paint/PhongMaterial;->setDiffuseColor(Ljavafx/scene/paint/Color;)V

    .line 117
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/paint/PhongMaterial;->setDiffuseMap(Ljavafx/scene/image/Image;)V

    .line 118
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/paint/PhongMaterial;->setSpecularMap(Ljavafx/scene/image/Image;)V

    .line 119
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/paint/PhongMaterial;->setBumpMap(Ljavafx/scene/image/Image;)V

    .line 120
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/paint/PhongMaterial;->setSelfIlluminationMap(Ljavafx/scene/image/Image;)V

    .line 121
    return-void
.end method

.method static synthetic access$002(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->diffuseColorDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$1002(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$102(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->specularColorDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$1100(Ljavafx/scene/paint/PhongMaterial;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$202(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->specularPowerDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->oldDiffuseMap:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$302(Ljavafx/scene/paint/PhongMaterial;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/paint/PhongMaterial;->oldDiffuseMap:Ljavafx/scene/image/Image;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$402(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->diffuseMapDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$500(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->oldSpecularMap:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$502(Ljavafx/scene/paint/PhongMaterial;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/paint/PhongMaterial;->oldSpecularMap:Ljavafx/scene/image/Image;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$602(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->specularMapDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$700(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->oldBumpMap:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$702(Ljavafx/scene/paint/PhongMaterial;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/paint/PhongMaterial;->oldBumpMap:Ljavafx/scene/image/Image;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$802(Ljavafx/scene/paint/PhongMaterial;Z)Z
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/paint/PhongMaterial;->bumpMapDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return v0
.end method

.method static synthetic access$900(Ljavafx/scene/paint/PhongMaterial;)Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->oldSelfIlluminationMap:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method static synthetic access$902(Ljavafx/scene/paint/PhongMaterial;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/image/Image;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/paint/PhongMaterial;->oldSelfIlluminationMap:Ljavafx/scene/image/Image;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method


# virtual methods
.method public final bumpMapProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->bumpMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 349
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$7;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "bumpMap"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/PhongMaterial$7;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->bumpMap:Ljavafx/beans/property/ObjectProperty;

    .line 377
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->bumpMap:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public final diffuseColorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseColor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 140
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "diffuseColor"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/PhongMaterial$1;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseColor:Ljavafx/beans/property/ObjectProperty;

    .line 149
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseColor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public final diffuseMapProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 249
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$5;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "diffuseMap"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/PhongMaterial$5;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseMap:Ljavafx/beans/property/ObjectProperty;

    .line 276
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseMap:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public final getBumpMap()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->bumpMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->bumpMap:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final getDiffuseColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseColor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseColor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public final getDiffuseMap()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->diffuseMap:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final getSelfIlluminationMap()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMap:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final getSpecularColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularColor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularColor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public final getSpecularMap()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularMap:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    goto :goto_0
.end method

.method public final getSpecularPower()D
    .locals 4

    .prologue
    .line 193
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial;->specularPower:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/paint/PhongMaterial;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial;->specularPower:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_getNGMaterial()Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->peer:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    if-nez v1, :cond_0

    .line 455
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;-><init>()V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->peer:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    .line 457
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->peer:Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public impl_updatePG()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/paint/PhongMaterial;->isDirty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    .line 501
    :goto_0
    return-void

    .line 471
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/paint/PhongMaterial;->impl_getNGMaterial()Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    move-result-object v3

    move-object v2, v3

    .line 472
    .local v2, "pMaterial":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->diffuseColorDirty:Z

    if-eqz v3, :cond_1

    .line 473
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getDiffuseColor()Ljavafx/scene/paint/Color;

    move-result-object v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setDiffuseColor(Ljava/lang/Object;)V

    .line 476
    :cond_1
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->specularColorDirty:Z

    if-eqz v3, :cond_2

    .line 477
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getSpecularColor()Ljavafx/scene/paint/Color;

    move-result-object v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setSpecularColor(Ljava/lang/Object;)V

    .line 480
    :cond_2
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->specularPowerDirty:Z

    if-eqz v3, :cond_3

    .line 481
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getSpecularPower()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setSpecularPower(F)V

    .line 483
    :cond_3
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->diffuseMapDirty:Z

    if-eqz v3, :cond_4

    .line 484
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getDiffuseMap()Ljavafx/scene/image/Image;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setDiffuseMap(Ljava/lang/Object;)V

    .line 487
    :cond_4
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->specularMapDirty:Z

    if-eqz v3, :cond_5

    .line 488
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getSpecularMap()Ljavafx/scene/image/Image;

    move-result-object v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setSpecularMap(Ljava/lang/Object;)V

    .line 491
    :cond_5
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->bumpMapDirty:Z

    if-eqz v3, :cond_6

    .line 492
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getBumpMap()Ljavafx/scene/image/Image;

    move-result-object v4

    if-nez v4, :cond_c

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setBumpMap(Ljava/lang/Object;)V

    .line 495
    :cond_6
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapDirty:Z

    if-eqz v3, :cond_7

    .line 496
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getSelfIlluminationMap()Ljavafx/scene/image/Image;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->setSelfIllumMap(Ljava/lang/Object;)V

    .line 500
    :cond_7
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/paint/PhongMaterial;->setDirty(Z)V

    .line 501
    goto/16 :goto_0

    .line 474
    :cond_8
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/paint/PhongMaterial;->getDiffuseColor()Ljavafx/scene/paint/Color;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 478
    :cond_9
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/paint/PhongMaterial;->getSpecularColor()Ljavafx/scene/paint/Color;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 484
    :cond_a
    move-object v4, v1

    .line 485
    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getDiffuseMap()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 488
    :cond_b
    move-object v4, v1

    .line 489
    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getSpecularMap()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    .line 492
    :cond_c
    move-object v4, v1

    .line 493
    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getBumpMap()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 496
    :cond_d
    move-object v4, v1

    .line 497
    invoke-virtual {v4}, Ljavafx/scene/paint/PhongMaterial;->getSelfIlluminationMap()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    goto :goto_6
.end method

.method public final selfIlluminationMapProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 399
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$8;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "selfIlluminationMap"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/PhongMaterial$8;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMap:Ljavafx/beans/property/ObjectProperty;

    .line 427
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMap:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public final setBumpMap(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->bumpMapProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public final setDiffuseColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->diffuseColorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public final setDiffuseMap(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->diffuseMapProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method setDirty(Z)V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/paint/Material;->setDirty(Z)V

    .line 433
    move v2, v1

    if-nez v2, :cond_0

    .line 434
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->diffuseColorDirty:Z

    .line 435
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularColorDirty:Z

    .line 436
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularPowerDirty:Z

    .line 437
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->diffuseMapDirty:Z

    .line 438
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularMapDirty:Z

    .line 439
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->bumpMapDirty:Z

    .line 440
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapDirty:Z

    .line 442
    :cond_0
    return-void
.end method

.method public final setSelfIlluminationMap(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->selfIlluminationMapProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public final setSpecularColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->specularColorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public final setSpecularMap(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/image/Image;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->specularMapProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public final setSpecularPower(D)V
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/paint/PhongMaterial;->specularPowerProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 190
    return-void
.end method

.method public final specularColorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularColor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 169
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "specularColor"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/PhongMaterial$2;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->specularColor:Ljavafx/beans/property/ObjectProperty;

    .line 178
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularColor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public final specularMapProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularMap:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 298
    move-object v1, v0

    new-instance v2, Ljavafx/scene/paint/PhongMaterial$6;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "specularMap"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/paint/PhongMaterial$6;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/paint/PhongMaterial;->specularMap:Ljavafx/beans/property/ObjectProperty;

    .line 326
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/PhongMaterial;->specularMap:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method

.method public final specularPowerProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 197
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/PhongMaterial;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial;->specularPower:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 198
    move-object v2, v1

    new-instance v3, Ljavafx/scene/paint/PhongMaterial$3;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "specularPower"

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/paint/PhongMaterial$3;-><init>(Ljavafx/scene/paint/PhongMaterial;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Ljavafx/scene/paint/PhongMaterial;->specularPower:Ljavafx/beans/property/DoubleProperty;

    .line 207
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/paint/PhongMaterial;->specularPower:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/PhongMaterial;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhongMaterial[diffuseColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getDiffuseColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specularColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 505
    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getSpecularColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specularPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 506
    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getSpecularPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", diffuseMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 507
    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getDiffuseMap()Ljavafx/scene/image/Image;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specularMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 508
    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getSpecularMap()Ljavafx/scene/image/Image;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bumpMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 509
    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getBumpMap()Ljavafx/scene/image/Image;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selfIlluminationMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 510
    invoke-virtual {v2}, Ljavafx/scene/paint/PhongMaterial;->getSelfIlluminationMap()Ljavafx/scene/image/Image;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/PhongMaterial;
    return-object v0
.end method
