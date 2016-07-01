.class public interface abstract Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;
.super Ljava/lang/Object;
.source "XMLPullParserConfiguration.java"

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLParserConfiguration;


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract parse(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
