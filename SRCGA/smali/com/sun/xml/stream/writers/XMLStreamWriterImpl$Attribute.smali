.class Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
.super Lorg/apache/xerces/xni/QName;
.source "XMLStreamWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attribute"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2061
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    .line 2062
    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    .line 2063
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$Attribute;->value:Ljava/lang/String;

    .line 2064
    return-void
.end method
