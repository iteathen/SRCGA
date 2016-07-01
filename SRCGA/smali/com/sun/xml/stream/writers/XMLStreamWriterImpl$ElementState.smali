.class Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
.super Lorg/apache/xerces/xni/QName;
.source "XMLStreamWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementState"
.end annotation


# instance fields
.field public isEmpty:Z

.field final synthetic this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V
    .locals 4

    .prologue
    .line 2041
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/xni/QName;-><init>()V

    .line 2039
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    .line 2041
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 2044
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localpart":Ljava/lang/String;
    move-object v4, p4

    .local v4, "rawname":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "uri":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    .line 2045
    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    .line 2046
    return-void
.end method


# virtual methods
.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 2050
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localpart":Ljava/lang/String;
    move-object v3, p3

    .local v3, "rawname":Ljava/lang/String;
    move-object v4, p4

    .local v4, "uri":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "isEmpty":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    .line 2052
    return-void
.end method
