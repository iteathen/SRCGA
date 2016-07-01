.class public Ljavafx/scene/shape/SVGPath;
.super Ljavafx/scene/shape/Shape;
.source "SVGPath.java"


# instance fields
.field private content:Ljavafx/beans/property/StringProperty;

.field private fillRule:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/FillRule;",
            ">;"
        }
    .end annotation
.end field

.field private path2d:Lcom/sun/javafx/geom/Path2D;

.field private svgPathObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/SVGPath;)V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/SVGPath;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/SVGPath;)V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/SVGPath;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$202(Ljavafx/scene/shape/SVGPath;Lcom/sun/javafx/geom/Path2D;)Lcom/sun/javafx/geom/Path2D;
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/SVGPath;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/shape/SVGPath;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/shape/SVGPath;
    return-object v0
.end method

.method private createSVGPath2D()Lcom/sun/javafx/geom/Path2D;
    .locals 9

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    :try_start_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->createSVGPath2D(Ljavafx/scene/shape/SVGPath;)Lcom/sun/javafx/geom/Path2D;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 231
    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v0

    .line 226
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Ljavafx/scene/shape/SVGPath;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 227
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getJavaFXLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Failed to configure svg path \"{0}\": {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    .line 229
    invoke-virtual {v7}, Ljavafx/scene/shape/SVGPath;->getContent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 227
    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    new-instance v3, Ljavafx/scene/shape/SVGPath;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/shape/SVGPath;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->createSVGPath2D(Ljavafx/scene/shape/SVGPath;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private createSVGPathObject()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    :try_start_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->createSVGPathObject(Ljavafx/scene/shape/SVGPath;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 243
    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v0

    .line 238
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "this":Ljavafx/scene/shape/SVGPath;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 239
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getJavaFXLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Failed to configure svg path \"{0}\": {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    .line 241
    invoke-virtual {v7}, Ljavafx/scene/shape/SVGPath;->getContent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 239
    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    new-instance v3, Ljavafx/scene/shape/SVGPath;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljavafx/scene/shape/SVGPath;-><init>()V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->createSVGPathObject(Ljavafx/scene/shape/SVGPath;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final contentProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->content:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 118
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/SVGPath$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/SVGPath$2;-><init>(Ljavafx/scene/shape/SVGPath;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/shape/SVGPath;->content:Ljavafx/beans/property/StringProperty;

    .line 138
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->content:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0
.end method

.method public final fillRuleProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/FillRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->fillRule:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 77
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/SVGPath$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/SVGPath$1;-><init>(Ljavafx/scene/shape/SVGPath;Ljavafx/scene/shape/FillRule;)V

    iput-object v2, v1, Ljavafx/scene/shape/SVGPath;->fillRule:Ljavafx/beans/property/ObjectProperty;

    .line 96
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->fillRule:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->content:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/SVGPath;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->content:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getFillRule()Ljavafx/scene/shape/FillRule;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->fillRule:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/SVGPath;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->fillRule:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/FillRule;

    goto :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Path2D;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->path2d:Lcom/sun/javafx/geom/Path2D;

    if-nez v1, :cond_0

    .line 161
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/SVGPath;->createSVGPath2D()Lcom/sun/javafx/geom/Path2D;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/shape/SVGPath;->path2d:Lcom/sun/javafx/geom/Path2D;

    .line 167
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0

    .line 163
    .restart local v0    # "this":Ljavafx/scene/shape/SVGPath;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/SVGPath;->path2d:Lcom/sun/javafx/geom/Path2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/SVGPath;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v2

    sget-object v3, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/SVGPath;->impl_configShape()Lcom/sun/javafx/geom/Path2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGSVGPath;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGSVGPath;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 179
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILLRULE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/SVGPath;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    .line 180
    invoke-virtual {v3, v4}, Ljavafx/scene/shape/SVGPath;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/SVGPath;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGSVGPath;

    move-object v1, v3

    .line 183
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGSVGPath;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGSVGPath;->acceptsPath2dOnUpdate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/SVGPath;->svgPathObject:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 185
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/Path2D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/shape/SVGPath;->svgPathObject:Ljava/lang/Object;

    .line 187
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/SVGPath;->svgPathObject:Ljava/lang/Object;

    check-cast v3, Lcom/sun/javafx/geom/Path2D;

    move-object v2, v3

    .line 188
    .local v2, "tempPathObject":Lcom/sun/javafx/geom/Path2D;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/SVGPath;->impl_configShape()Lcom/sun/javafx/geom/Path2D;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Path2D;->setTo(Lcom/sun/javafx/geom/Path2D;)V

    .line 189
    .line 192
    .end local v2    # "tempPathObject":Lcom/sun/javafx/geom/Path2D;
    :goto_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/SVGPath;->svgPathObject:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGSVGPath;->setContent(Ljava/lang/Object;)V

    .line 194
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGSVGPath;
    :cond_2
    return-void

    .line 190
    .restart local v1    # "peer":Lcom/sun/javafx/sg/prism/NGSVGPath;
    :cond_3
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/shape/SVGPath;->createSVGPathObject()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/shape/SVGPath;->svgPathObject:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/SVGPath;->contentProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public final setFillRule(Ljavafx/scene/shape/FillRule;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/SVGPath;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/FillRule;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/SVGPath;->fillRule:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-eq v2, v3, :cond_1

    .line 67
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/SVGPath;->fillRuleProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 69
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 202
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/SVGPath;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "SVGPath["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 204
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/SVGPath;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 205
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 206
    move-object v5, v2

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 209
    :cond_0
    move-object v5, v2

    const-string v6, "content=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/SVGPath;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 211
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/SVGPath;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    move-object v5, v2

    const-string v6, ", fillRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/SVGPath;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 214
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/SVGPath;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 215
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 216
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/SVGPath;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 220
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/SVGPath;
    return-object v1
.end method
