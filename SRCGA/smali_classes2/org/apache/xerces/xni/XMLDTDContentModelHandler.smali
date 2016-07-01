.class public interface abstract Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
.super Ljava/lang/Object;
.source "XMLDTDContentModelHandler.java"


# static fields
.field public static final OCCURS_ONE_OR_MORE:S = 0x4s

.field public static final OCCURS_ZERO_OR_MORE:S = 0x3s

.field public static final OCCURS_ZERO_OR_ONE:S = 0x2s

.field public static final SEPARATOR_CHOICE:S = 0x0s

.field public static final SEPARATOR_SEQUENCE:S = 0x1s


# virtual methods
.method public abstract any(Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract empty(Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endContentModel(Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract endGroup(Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract occurrence(SLorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract pcdata(Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract separator(SLorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startContentModel(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract startGroup(Lorg/apache/xerces/xni/Augmentations;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method
