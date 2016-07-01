.class public interface abstract Lorg/apache/xerces/xni/parser/XMLDTDScanner;
.super Ljava/lang/Object;
.source "XMLDTDScanner.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDTDSource;
.implements Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;


# virtual methods
.method public abstract scanDTDExternalSubset(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract scanDTDInternalSubset(ZZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
