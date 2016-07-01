.class public interface abstract Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;
.super Ljava/lang/Object;
.source "NodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/NodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NodeAccessor"
.end annotation


# virtual methods
.method public abstract getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;
.end method

.method public abstract getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;
.end method

.method public abstract isDerivedDepthTest(Ljavafx/scene/Node;)Z
.end method

.method public abstract layoutNodeForPrinting(Ljavafx/scene/Node;)V
.end method

.method public abstract setLabeledBy(Ljavafx/scene/Node;Ljavafx/scene/Node;)V
.end method
