.class public interface abstract Lorg/apache/xerces/xni/parser/XMLDocumentScanner;
.super Ljava/lang/Object;
.source "XMLDocumentScanner.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDocumentSource;


# virtual methods
.method public abstract next()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation
.end method

.method public abstract scanDocument(Z)Z
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
