.class public Lorg/apache/xerces/util/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final CHARS:[B

.field public static final MASK_CONTENT:I = 0x20

.field public static final MASK_NAME:I = 0x8

.field public static final MASK_NAME_START:I = 0x4

.field public static final MASK_NCNAME:I = 0x80

.field public static final MASK_NCNAME_START:I = 0x40

.field public static final MASK_PUBID:I = 0x10

.field public static final MASK_SPACE:I = 0x2

.field public static final MASK_VALID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 91
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    .line 135
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 136
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 137
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 138
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x20

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 139
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x21

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    .line 140
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x22

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 141
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x23

    const/16 v2, 0x26

    const/16 v3, 0x31

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 142
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 143
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x27

    const/16 v2, 0x2d

    const/16 v3, 0x31

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 144
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    const/16 v3, -0x47

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 145
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2f

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    .line 146
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x30

    const/16 v2, 0x3a

    const/16 v3, -0x47

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 147
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3a

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    .line 148
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3b

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    .line 149
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 150
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3d

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    .line 151
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 152
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3f

    const/16 v2, 0x41

    const/16 v3, 0x31

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 153
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x41

    const/16 v2, 0x5b

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 154
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 155
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5d

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 156
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 157
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5f

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    .line 158
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x60

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 159
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x61

    const/16 v2, 0x7b

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 160
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x7b

    const/16 v2, 0xb7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 161
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb7

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 162
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb8

    const/16 v2, 0xc0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 163
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc0

    const/16 v2, 0xd7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 164
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd7

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 165
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd8

    const/16 v2, 0xf7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 166
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf7

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 167
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf8

    const/16 v2, 0x132

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 168
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x132

    const/16 v2, 0x134

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 169
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x134

    const/16 v2, 0x13f

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 170
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x13f

    const/16 v2, 0x141

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 171
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x141

    const/16 v2, 0x149

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 172
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x149

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 173
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x14a

    const/16 v2, 0x17f

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 174
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x17f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 175
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x180

    const/16 v2, 0x1c4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 176
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1c4

    const/16 v2, 0x1cd

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 177
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1cd

    const/16 v2, 0x1f1

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 178
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f1

    const/16 v2, 0x1f4

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 179
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f4

    const/16 v2, 0x1f6

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 180
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f6

    const/16 v2, 0x1fa

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 181
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fa

    const/16 v2, 0x218

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 182
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x218

    const/16 v2, 0x250

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 183
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x250

    const/16 v2, 0x2a9

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 184
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2a9

    const/16 v2, 0x2bb

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 185
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2bb

    const/16 v2, 0x2c2

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 186
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2c2

    const/16 v2, 0x2d0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 187
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2d0

    const/16 v2, 0x2d2

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 188
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2d2

    const/16 v2, 0x300

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 189
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x300

    const/16 v2, 0x346

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 190
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x346

    const/16 v2, 0x360

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 191
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x360

    const/16 v2, 0x362

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 192
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x362

    const/16 v2, 0x386

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 193
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x386

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 194
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x387

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 195
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x388

    const/16 v2, 0x38b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 196
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x38b

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 197
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x38c

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 198
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x38d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 199
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x38e

    const/16 v2, 0x3a2

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 200
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3a2

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 201
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3a3

    const/16 v2, 0x3cf

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 202
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3cf

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 203
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3d0

    const/16 v2, 0x3d7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 204
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3d7

    const/16 v2, 0x3da

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 205
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3da

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 206
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3db

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 207
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3dc

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 208
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3dd

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 209
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3de

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 210
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3df

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 211
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3e0

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 212
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3e1

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 213
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3e2

    const/16 v2, 0x3f4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 214
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3f4

    const/16 v2, 0x401

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 215
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x401

    const/16 v2, 0x40d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 216
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x40d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 217
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x40e

    const/16 v2, 0x450

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 218
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x450

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 219
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x451

    const/16 v2, 0x45d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 220
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x45d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 221
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x45e

    const/16 v2, 0x482

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 222
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x482

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 223
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x483

    const/16 v2, 0x487

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 224
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x487

    const/16 v2, 0x490

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 225
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x490

    const/16 v2, 0x4c5

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 226
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4c5

    const/16 v2, 0x4c7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 227
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4c7

    const/16 v2, 0x4c9

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 228
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4c9

    const/16 v2, 0x4cb

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 229
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4cb

    const/16 v2, 0x4cd

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 230
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4cd

    const/16 v2, 0x4d0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 231
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4d0

    const/16 v2, 0x4ec

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 232
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4ec

    const/16 v2, 0x4ee

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 233
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4ee

    const/16 v2, 0x4f6

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 234
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4f6

    const/16 v2, 0x4f8

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 235
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4f8

    const/16 v2, 0x4fa

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 236
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4fa

    const/16 v2, 0x531

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 237
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x531

    const/16 v2, 0x557

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 238
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x557

    const/16 v2, 0x559

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 239
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x559

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 240
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x55a

    const/16 v2, 0x561

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 241
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x561

    const/16 v2, 0x587

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 242
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x587

    const/16 v2, 0x591

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 243
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x591

    const/16 v2, 0x5a2

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 244
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5a2

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 245
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5a3

    const/16 v2, 0x5ba

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 246
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5ba

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 247
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5bb

    const/16 v2, 0x5be

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 248
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5be

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 249
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5bf

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 250
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5c0

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 251
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5c1

    const/16 v2, 0x5c3

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 252
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5c3

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 253
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5c4

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 254
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5c5

    const/16 v2, 0x5d0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 255
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5d0

    const/16 v2, 0x5eb

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 256
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5eb

    const/16 v2, 0x5f0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 257
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5f0

    const/16 v2, 0x5f3

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 258
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x5f3

    const/16 v2, 0x621

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 259
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x621

    const/16 v2, 0x63b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 260
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x63b

    const/16 v2, 0x640

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 261
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x640

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 262
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x641

    const/16 v2, 0x64b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 263
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x64b

    const/16 v2, 0x653

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 264
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x653

    const/16 v2, 0x660

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 265
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x660

    const/16 v2, 0x66a

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 266
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x66a

    const/16 v2, 0x670

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 267
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x670

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 268
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x671

    const/16 v2, 0x6b8

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 269
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6b8

    const/16 v2, 0x6ba

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 270
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6ba

    const/16 v2, 0x6bf

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 271
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6bf

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 272
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6c0

    const/16 v2, 0x6cf

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 273
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6cf

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 274
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6d0

    const/16 v2, 0x6d4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 275
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6d4

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 276
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6d5

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 277
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6d6

    const/16 v2, 0x6e5

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 278
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6e5

    const/16 v2, 0x6e7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 279
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6e7

    const/16 v2, 0x6e9

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 280
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6e9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 281
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6ea

    const/16 v2, 0x6ee

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 282
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6ee

    const/16 v2, 0x6f0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 283
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6f0

    const/16 v2, 0x6fa

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 284
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x6fa

    const/16 v2, 0x901

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 285
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x901

    const/16 v2, 0x904

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 286
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x904

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 287
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x905

    const/16 v2, 0x93a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 288
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x93a

    const/16 v2, 0x93c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 289
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x93c

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 290
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x93d

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 291
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x93e

    const/16 v2, 0x94e

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 292
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x94e

    const/16 v2, 0x951

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 293
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x951

    const/16 v2, 0x955

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 294
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x955

    const/16 v2, 0x958

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 295
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x958

    const/16 v2, 0x962

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 296
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x962

    const/16 v2, 0x964

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 297
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x964

    const/16 v2, 0x966

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 298
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x966

    const/16 v2, 0x970

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 299
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x970

    const/16 v2, 0x981

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 300
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x981

    const/16 v2, 0x984

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 301
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x984

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 302
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x985

    const/16 v2, 0x98d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 303
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x98d

    const/16 v2, 0x98f

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 304
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x98f

    const/16 v2, 0x991

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 305
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x991

    const/16 v2, 0x993

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 306
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x993

    const/16 v2, 0x9a9

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 307
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9a9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 308
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9aa

    const/16 v2, 0x9b1

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 309
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9b1

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 310
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9b2

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 311
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9b3

    const/16 v2, 0x9b6

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 312
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9b6

    const/16 v2, 0x9ba

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 313
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9ba

    const/16 v2, 0x9bc

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 314
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9bc

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 315
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9bd

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 316
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9be

    const/16 v2, 0x9c5

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 317
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9c5

    const/16 v2, 0x9c7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 318
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9c7

    const/16 v2, 0x9c9

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 319
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9c9

    const/16 v2, 0x9cb

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 320
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9cb

    const/16 v2, 0x9ce

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 321
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9ce

    const/16 v2, 0x9d7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 322
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9d7

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 323
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9d8

    const/16 v2, 0x9dc

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 324
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9dc

    const/16 v2, 0x9de

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 325
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9de

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 326
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9df

    const/16 v2, 0x9e2

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 327
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9e2

    const/16 v2, 0x9e4

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 328
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9e4

    const/16 v2, 0x9e6

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 329
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9e6

    const/16 v2, 0x9f0

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 330
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9f0

    const/16 v2, 0x9f2

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 331
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x9f2

    const/16 v2, 0xa02

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 332
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa02

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 333
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa03

    const/16 v2, 0xa05

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 334
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa05

    const/16 v2, 0xa0b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 335
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa0b

    const/16 v2, 0xa0f

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 336
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa0f

    const/16 v2, 0xa11

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 337
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa11

    const/16 v2, 0xa13

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 338
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa13

    const/16 v2, 0xa29

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 339
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa29

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 340
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa2a

    const/16 v2, 0xa31

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 341
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa31

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 342
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa32

    const/16 v2, 0xa34

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 343
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa34

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 344
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa35

    const/16 v2, 0xa37

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 345
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa37

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 346
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa38

    const/16 v2, 0xa3a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 347
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa3a

    const/16 v2, 0xa3c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 348
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa3c

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 349
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa3d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 350
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa3e

    const/16 v2, 0xa43

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 351
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa43

    const/16 v2, 0xa47

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 352
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa47

    const/16 v2, 0xa49

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 353
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa49

    const/16 v2, 0xa4b

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 354
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa4b

    const/16 v2, 0xa4e

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 355
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa4e

    const/16 v2, 0xa59

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 356
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa59

    const/16 v2, 0xa5d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 357
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa5d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 358
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa5e

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 359
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa5f

    const/16 v2, 0xa66

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 360
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa66

    const/16 v2, 0xa72

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 361
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa72

    const/16 v2, 0xa75

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 362
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa75

    const/16 v2, 0xa81

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 363
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa81

    const/16 v2, 0xa84

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 364
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa84

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 365
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa85

    const/16 v2, 0xa8c

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 366
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa8c

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 367
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa8d

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 368
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa8e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 369
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa8f

    const/16 v2, 0xa92

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 370
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa92

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 371
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xa93

    const/16 v2, 0xaa9

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 372
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xaa9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 373
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xaaa

    const/16 v2, 0xab1

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 374
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xab1

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 375
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xab2

    const/16 v2, 0xab4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 376
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xab4

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 377
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xab5

    const/16 v2, 0xaba

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 378
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xaba

    const/16 v2, 0xabc

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 379
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xabc

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 380
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xabd

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 381
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xabe

    const/16 v2, 0xac6

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 382
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xac6

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 383
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xac7

    const/16 v2, 0xaca

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 384
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xaca

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 385
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xacb

    const/16 v2, 0xace

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 386
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xace

    const/16 v2, 0xae0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 387
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xae0

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 388
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xae1

    const/16 v2, 0xae6

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 389
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xae6

    const/16 v2, 0xaf0

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 390
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xaf0

    const/16 v2, 0xb01

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 391
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb01

    const/16 v2, 0xb04

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 392
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb04

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 393
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb05

    const/16 v2, 0xb0d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 394
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb0d

    const/16 v2, 0xb0f

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 395
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb0f

    const/16 v2, 0xb11

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 396
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb11

    const/16 v2, 0xb13

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 397
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb13

    const/16 v2, 0xb29

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 398
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb29

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 399
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb2a

    const/16 v2, 0xb31

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 400
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb31

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 401
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb32

    const/16 v2, 0xb34

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 402
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb34

    const/16 v2, 0xb36

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 403
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb36

    const/16 v2, 0xb3a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 404
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb3a

    const/16 v2, 0xb3c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 405
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb3c

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 406
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb3d

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 407
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb3e

    const/16 v2, 0xb44

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 408
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb44

    const/16 v2, 0xb47

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 409
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb47

    const/16 v2, 0xb49

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 410
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb49

    const/16 v2, 0xb4b

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 411
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb4b

    const/16 v2, 0xb4e

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 412
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb4e

    const/16 v2, 0xb56

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 413
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb56

    const/16 v2, 0xb58

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 414
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb58

    const/16 v2, 0xb5c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 415
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb5c

    const/16 v2, 0xb5e

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 416
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb5e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 417
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb5f

    const/16 v2, 0xb62

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 418
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb62

    const/16 v2, 0xb66

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 419
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb66

    const/16 v2, 0xb70

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 420
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb70

    const/16 v2, 0xb82

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 421
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb82

    const/16 v2, 0xb84

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 422
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb84

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 423
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb85

    const/16 v2, 0xb8b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 424
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb8b

    const/16 v2, 0xb8e

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 425
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb8e

    const/16 v2, 0xb91

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 426
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb91

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 427
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb92

    const/16 v2, 0xb96

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 428
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb96

    const/16 v2, 0xb99

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 429
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb99

    const/16 v2, 0xb9b

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 430
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb9b

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 431
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb9c

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 432
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb9d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 433
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xb9e

    const/16 v2, 0xba0

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 434
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xba0

    const/16 v2, 0xba3

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 435
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xba3

    const/16 v2, 0xba5

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 436
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xba5

    const/16 v2, 0xba8

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 437
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xba8

    const/16 v2, 0xbab

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 438
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbab

    const/16 v2, 0xbae

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 439
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbae

    const/16 v2, 0xbb6

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 440
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbb6

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 441
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbb7

    const/16 v2, 0xbba

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 442
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbba

    const/16 v2, 0xbbe

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 443
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbbe

    const/16 v2, 0xbc3

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 444
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbc3

    const/16 v2, 0xbc6

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 445
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbc6

    const/16 v2, 0xbc9

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 446
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbc9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 447
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbca

    const/16 v2, 0xbce

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 448
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbce

    const/16 v2, 0xbd7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 449
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbd7

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 450
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbd8

    const/16 v2, 0xbe7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 451
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbe7

    const/16 v2, 0xbf0

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 452
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xbf0

    const/16 v2, 0xc01

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 453
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc01

    const/16 v2, 0xc04

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 454
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc04

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 455
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc05

    const/16 v2, 0xc0d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 456
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc0d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 457
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc0e

    const/16 v2, 0xc11

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 458
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc11

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 459
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc12

    const/16 v2, 0xc29

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 460
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc29

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 461
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc2a

    const/16 v2, 0xc34

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 462
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc34

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 463
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc35

    const/16 v2, 0xc3a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 464
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc3a

    const/16 v2, 0xc3e

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 465
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc3e

    const/16 v2, 0xc45

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 466
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc45

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 467
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc46

    const/16 v2, 0xc49

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 468
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc49

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 469
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc4a

    const/16 v2, 0xc4e

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 470
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc4e

    const/16 v2, 0xc55

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 471
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc55

    const/16 v2, 0xc57

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 472
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc57

    const/16 v2, 0xc60

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 473
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc60

    const/16 v2, 0xc62

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 474
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc62

    const/16 v2, 0xc66

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 475
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc66

    const/16 v2, 0xc70

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 476
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc70

    const/16 v2, 0xc82

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 477
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc82

    const/16 v2, 0xc84

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 478
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc84

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 479
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc85

    const/16 v2, 0xc8d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 480
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc8d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 481
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc8e

    const/16 v2, 0xc91

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 482
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc91

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 483
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xc92

    const/16 v2, 0xca9

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 484
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xca9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 485
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcaa

    const/16 v2, 0xcb4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 486
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcb4

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 487
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcb5

    const/16 v2, 0xcba

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 488
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcba

    const/16 v2, 0xcbe

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 489
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcbe

    const/16 v2, 0xcc5

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 490
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcc5

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 491
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcc6

    const/16 v2, 0xcc9

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 492
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcc9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 493
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcca

    const/16 v2, 0xcce

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 494
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcce

    const/16 v2, 0xcd5

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 495
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcd5

    const/16 v2, 0xcd7

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 496
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcd7

    const/16 v2, 0xcde

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 497
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcde

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 498
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcdf

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 499
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xce0

    const/16 v2, 0xce2

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 500
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xce2

    const/16 v2, 0xce6

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 501
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xce6

    const/16 v2, 0xcf0

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 502
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xcf0

    const/16 v2, 0xd02

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 503
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd02

    const/16 v2, 0xd04

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 504
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd04

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 505
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd05

    const/16 v2, 0xd0d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 506
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd0d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 507
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd0e

    const/16 v2, 0xd11

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 508
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd11

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 509
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd12

    const/16 v2, 0xd29

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 510
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd29

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 511
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd2a

    const/16 v2, 0xd3a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 512
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd3a

    const/16 v2, 0xd3e

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 513
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd3e

    const/16 v2, 0xd44

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 514
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd44

    const/16 v2, 0xd46

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 515
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd46

    const/16 v2, 0xd49

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 516
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd49

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 517
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd4a

    const/16 v2, 0xd4e

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 518
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd4e

    const/16 v2, 0xd57

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 519
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd57

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 520
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd58

    const/16 v2, 0xd60

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 521
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd60

    const/16 v2, 0xd62

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 522
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd62

    const/16 v2, 0xd66

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 523
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd66

    const/16 v2, 0xd70

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 524
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xd70

    const/16 v2, 0xe01

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 525
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe01

    const/16 v2, 0xe2f

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 526
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe2f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 527
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe30

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 528
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe31

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 529
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe32

    const/16 v2, 0xe34

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 530
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe34

    const/16 v2, 0xe3b

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 531
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe3b

    const/16 v2, 0xe40

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 532
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe40

    const/16 v2, 0xe46

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 533
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe46

    const/16 v2, 0xe4f

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 534
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe4f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 535
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe50

    const/16 v2, 0xe5a

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 536
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe5a

    const/16 v2, 0xe81

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 537
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe81

    const/16 v2, 0xe83

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 538
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe83

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 539
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe84

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 540
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe85

    const/16 v2, 0xe87

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 541
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe87

    const/16 v2, 0xe89

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 542
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe89

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 543
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe8a

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 544
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe8b

    const/16 v2, 0xe8d

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 545
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe8d

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 546
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe8e

    const/16 v2, 0xe94

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 547
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe94

    const/16 v2, 0xe98

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 548
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe98

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 549
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xe99

    const/16 v2, 0xea0

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 550
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea0

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 551
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea1

    const/16 v2, 0xea4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 552
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea4

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 553
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea5

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 554
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea6

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 555
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea7

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 556
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xea8

    const/16 v2, 0xeaa

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 557
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeaa

    const/16 v2, 0xeac

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 558
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeac

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 559
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xead

    const/16 v2, 0xeaf

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 560
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeaf

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 561
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeb0

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 562
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeb1

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 563
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeb2

    const/16 v2, 0xeb4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 564
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeb4

    const/16 v2, 0xeba

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 565
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeba

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 566
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xebb

    const/16 v2, 0xebd

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 567
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xebd

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 568
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xebe

    const/16 v2, 0xec0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 569
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xec0

    const/16 v2, 0xec5

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 570
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xec5

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 571
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xec6

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 572
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xec7

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 573
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xec8

    const/16 v2, 0xece

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 574
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xece

    const/16 v2, 0xed0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 575
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xed0

    const/16 v2, 0xeda

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 576
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xeda

    const/16 v2, 0xf18

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 577
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf18

    const/16 v2, 0xf1a

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 578
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf1a

    const/16 v2, 0xf20

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 579
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf20

    const/16 v2, 0xf2a

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 580
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf2a

    const/16 v2, 0xf35

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 581
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf35

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 582
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf36

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 583
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf37

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 584
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf38

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 585
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf39

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 586
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf3a

    const/16 v2, 0xf3e

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 587
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf3e

    const/16 v2, 0xf40

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 588
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf40

    const/16 v2, 0xf48

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 589
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf48

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 590
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf49

    const/16 v2, 0xf6a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 591
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf6a

    const/16 v2, 0xf71

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 592
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf71

    const/16 v2, 0xf85

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 593
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf85

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 594
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf86

    const/16 v2, 0xf8c

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 595
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf8c

    const/16 v2, 0xf90

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 596
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf90

    const/16 v2, 0xf96

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 597
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf96

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 598
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf97

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 599
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf98

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 600
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xf99

    const/16 v2, 0xfae

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 601
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xfae

    const/16 v2, 0xfb1

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 602
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xfb1

    const/16 v2, 0xfb8

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 603
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xfb8

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 604
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xfb9

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 605
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0xfba

    const/16 v2, 0x10a0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 606
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x10a0

    const/16 v2, 0x10c6

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 607
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x10c6

    const/16 v2, 0x10d0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 608
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x10d0

    const/16 v2, 0x10f7

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 609
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x10f7

    const/16 v2, 0x1100

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 610
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1100

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 611
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1101

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 612
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1102

    const/16 v2, 0x1104

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 613
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1104

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 614
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1105

    const/16 v2, 0x1108

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 615
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1108

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 616
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1109

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 617
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x110a

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 618
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x110b

    const/16 v2, 0x110d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 619
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x110d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 620
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x110e

    const/16 v2, 0x1113

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 621
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1113

    const/16 v2, 0x113c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 622
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x113c

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 623
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x113d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 624
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x113e

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 625
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x113f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 626
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1140

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 627
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1141

    const/16 v2, 0x114c

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 628
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x114c

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 629
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x114d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 630
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x114e

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 631
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x114f

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 632
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1150

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 633
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1151

    const/16 v2, 0x1154

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 634
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1154

    const/16 v2, 0x1156

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 635
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1156

    const/16 v2, 0x1159

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 636
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1159

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 637
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x115a

    const/16 v2, 0x115f

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 638
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x115f

    const/16 v2, 0x1162

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 639
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1162

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 640
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1163

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 641
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1164

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 642
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1165

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 643
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1166

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 644
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1167

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 645
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1168

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 646
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1169

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 647
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x116a

    const/16 v2, 0x116d

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 648
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x116d

    const/16 v2, 0x116f

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 649
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x116f

    const/16 v2, 0x1172

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 650
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1172

    const/16 v2, 0x1174

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 651
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1174

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 652
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1175

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 653
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1176

    const/16 v2, 0x119e

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 654
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x119e

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 655
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x119f

    const/16 v2, 0x11a8

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 656
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11a8

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 657
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11a9

    const/16 v2, 0x11ab

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 658
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11ab

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 659
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11ac

    const/16 v2, 0x11ae

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 660
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11ae

    const/16 v2, 0x11b0

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 661
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11b0

    const/16 v2, 0x11b7

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 662
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11b7

    const/16 v2, 0x11b9

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 663
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11b9

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 664
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11ba

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 665
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11bb

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 666
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11bc

    const/16 v2, 0x11c3

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 667
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11c3

    const/16 v2, 0x11eb

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 668
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11eb

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 669
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11ec

    const/16 v2, 0x11f0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 670
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11f0

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 671
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11f1

    const/16 v2, 0x11f9

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 672
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11f9

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 673
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x11fa

    const/16 v2, 0x1e00

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 674
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1e00

    const/16 v2, 0x1e9c

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 675
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1e9c

    const/16 v2, 0x1ea0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 676
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1ea0

    const/16 v2, 0x1efa

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 677
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1efa

    const/16 v2, 0x1f00

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 678
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f00

    const/16 v2, 0x1f16

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 679
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f16

    const/16 v2, 0x1f18

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 680
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f18

    const/16 v2, 0x1f1e

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 681
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f1e

    const/16 v2, 0x1f20

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 682
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f20

    const/16 v2, 0x1f46

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 683
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f46

    const/16 v2, 0x1f48

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 684
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f48

    const/16 v2, 0x1f4e

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 685
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f4e

    const/16 v2, 0x1f50

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 686
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f50

    const/16 v2, 0x1f58

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 687
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f58

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 688
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f59

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 689
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5a

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 690
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5b

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 691
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5c

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 692
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5d

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 693
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5e

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 694
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5f

    const/16 v2, 0x1f7e

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 695
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f7e

    const/16 v2, 0x1f80

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 696
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1f80

    const/16 v2, 0x1fb5

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 697
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fb5

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 698
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fb6

    const/16 v2, 0x1fbd

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 699
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbd

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 700
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbe

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 701
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbf

    const/16 v2, 0x1fc2

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 702
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc2

    const/16 v2, 0x1fc5

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 703
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc5

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 704
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc6

    const/16 v2, 0x1fcd

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 705
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fcd

    const/16 v2, 0x1fd0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 706
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd0

    const/16 v2, 0x1fd4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 707
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd4

    const/16 v2, 0x1fd6

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 708
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd6

    const/16 v2, 0x1fdc

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 709
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fdc

    const/16 v2, 0x1fe0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 710
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fe0

    const/16 v2, 0x1fed

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 711
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1fed

    const/16 v2, 0x1ff2

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 712
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff2

    const/16 v2, 0x1ff5

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 713
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff5

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 714
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff6

    const/16 v2, 0x1ffd

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 715
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x1ffd

    const/16 v2, 0x20d0

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 716
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x20d0

    const/16 v2, 0x20dd

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 717
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x20dd

    const/16 v2, 0x20e1

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 718
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x20e1

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 719
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x20e2

    const/16 v2, 0x2126

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 720
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2126

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 721
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2127

    const/16 v2, 0x212a

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 722
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x212a

    const/16 v2, 0x212c

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 723
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x212c

    const/16 v2, 0x212e

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 724
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x212e

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 725
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x212f

    const/16 v2, 0x2180

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 726
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2180

    const/16 v2, 0x2183

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 727
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x2183

    const/16 v2, 0x3005

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 728
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3005

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    .line 729
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3006

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 730
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3007

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    .line 731
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3008

    const/16 v2, 0x3021

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 732
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3021

    const/16 v2, 0x302a

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 733
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x302a

    const/16 v2, 0x3030

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 734
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3030

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 735
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3031

    const/16 v2, 0x3036

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 736
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3036

    const/16 v2, 0x3041

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 737
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3041

    const/16 v2, 0x3095

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 738
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3095

    const/16 v2, 0x3099

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 739
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3099

    const/16 v2, 0x309b

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 740
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x309b

    const/16 v2, 0x309d

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 741
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x309d

    const/16 v2, 0x309f

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 742
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x309f

    const/16 v2, 0x30a1

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 743
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x30a1

    const/16 v2, 0x30fb

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 744
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x30fb

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    .line 745
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x30fc

    const/16 v2, 0x30ff

    const/16 v3, -0x57

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 746
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x30ff

    const/16 v2, 0x3105

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 747
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x3105

    const/16 v2, 0x312d

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 748
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x312d

    const/16 v2, 0x4e00

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 749
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const/16 v1, 0x4e00

    const v2, 0x9fa6

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 750
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const v1, 0x9fa6

    const v2, 0xac00

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 751
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const v1, 0xac00

    const v2, 0xd7a4

    const/16 v3, -0x13

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 752
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const v1, 0xd7a4

    const v2, 0xd800

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 753
    sget-object v0, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    const v1, 0xe000

    const v2, 0xfffe

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 757
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLChar;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highSurrogate(I)C
    .locals 3

    .prologue
    .line 789
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    shr-int/lit8 v1, v1, 0xa

    const v2, 0xd800

    add-int/2addr v1, v2

    int-to-char v1, v1

    move v0, v1

    .end local v0    # "c":I
    return v0
.end method

.method public static isContent(I)Z
    .locals 3

    .prologue
    .line 850
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const v2, 0x10ffff

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHighSurrogate(I)Z
    .locals 3

    .prologue
    .line 807
    move v0, p0

    .local v0, "c":I
    const v1, 0xd800

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    const v2, 0xdbff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInvalid(I)Z
    .locals 2

    .prologue
    .line 841
    move v0, p0

    .local v0, "c":I
    move v1, v0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLowSurrogate(I)Z
    .locals 3

    .prologue
    .line 816
    move v0, p0

    .local v0, "c":I
    const v1, 0xdc00

    move v2, v0

    if-gt v1, v2, :cond_0

    move v1, v0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMarkup(I)Z
    .locals 3

    .prologue
    .line 861
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNCName(I)Z
    .locals 3

    .prologue
    .line 915
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNCNameStart(I)Z
    .locals 3

    .prologue
    .line 904
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isName(I)Z
    .locals 3

    .prologue
    .line 893
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNameStart(I)Z
    .locals 3

    .prologue
    .line 882
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPubid(I)Z
    .locals 3

    .prologue
    .line 926
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSpace(I)Z
    .locals 3

    .prologue
    .line 871
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupplemental(I)Z
    .locals 3

    .prologue
    .line 769
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    move v1, v0

    const v2, 0x10ffff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValid(I)Z
    .locals 3

    .prologue
    .line 831
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/apache/xerces/util/XMLChar;->CHARS:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000

    move v2, v0

    if-gt v1, v2, :cond_2

    move v1, v0

    const v2, 0x10ffff

    if-gt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidIANAEncoding(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "ianaEncoding":Ljava/lang/String;
    move-object v4, v0

    if-eqz v4, :cond_7

    .line 1019
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 1020
    .local v1, "length":I
    move v4, v1

    if-lez v4, :cond_7

    .line 1021
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 1022
    .local v2, "c":C
    move v4, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_1

    :cond_0
    move v4, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_7

    move v4, v2

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_7

    .line 1023
    :cond_1
    const/4 v4, 0x1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_6

    .line 1024
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 1025
    move v4, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_5

    :cond_2
    move v4, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    move v4, v2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_5

    :cond_3
    move v4, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    move v4, v2

    const/16 v5, 0x39

    if-le v4, v5, :cond_5

    :cond_4
    move v4, v2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_5

    move v4, v2

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_5

    move v4, v2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_5

    .line 1028
    const/4 v4, 0x0

    move v0, v4

    .line 1035
    .end local v0    # "ianaEncoding":Ljava/lang/String;
    :goto_1
    return v0

    .line 1023
    .restart local v0    # "ianaEncoding":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1031
    :cond_6
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 1035
    .end local v1    # "length":I
    .end local v2    # "c":C
    .end local v3    # "i":I
    :cond_7
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public static isValidJavaEncoding(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "javaEncoding":Ljava/lang/String;
    move-object v4, v0

    if-eqz v4, :cond_5

    .line 1048
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v4

    .line 1049
    .local v1, "length":I
    move v4, v1

    if-lez v4, :cond_5

    .line 1050
    const/4 v4, 0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_4

    .line 1051
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 1052
    .local v3, "c":C
    move v4, v3

    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    move v4, v3

    const/16 v5, 0x5a

    if-le v4, v5, :cond_3

    :cond_0
    move v4, v3

    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_3

    :cond_1
    move v4, v3

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    move v4, v3

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_3

    .line 1055
    const/4 v4, 0x0

    move v0, v4

    .line 1061
    .end local v0    # "javaEncoding":Ljava/lang/String;
    .end local v3    # "c":C
    :goto_1
    return v0

    .line 1050
    .restart local v0    # "javaEncoding":Ljava/lang/String;
    .restart local v3    # "c":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    .end local v3    # "c":C
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 1061
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public static isValidNCName(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "ncName":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 968
    const/4 v3, 0x0

    move v0, v3

    .line 978
    .end local v0    # "ncName":Ljava/lang/String;
    .local v1, "ch":C
    :goto_0
    return v0

    .line 969
    .end local v1    # "ch":C
    .restart local v0    # "ncName":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 970
    .restart local v1    # "ch":C
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 971
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 972
    :cond_1
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 973
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 974
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 975
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 972
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 978
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 940
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 941
    const/4 v3, 0x0

    move v0, v3

    .line 951
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "ch":C
    :goto_0
    return v0

    .line 942
    .end local v1    # "ch":C
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 943
    .restart local v1    # "ch":C
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 944
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 945
    :cond_1
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 946
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 947
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 948
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 945
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 951
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static isValidNmtoken(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "nmtoken":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 993
    const/4 v3, 0x0

    move v0, v3

    .line 1000
    .end local v0    # "nmtoken":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    return v0

    .line 994
    .end local v1    # "i":I
    .restart local v0    # "nmtoken":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .restart local v1    # "i":I
    :goto_1
    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 995
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    .line 996
    .local v2, "ch":C
    move v3, v2

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 997
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 994
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1000
    .end local v2    # "ch":C
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static lowSurrogate(I)C
    .locals 3

    .prologue
    .line 798
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    const/16 v2, 0x3ff

    and-int/lit16 v1, v1, 0x3ff

    const v2, 0xdc00

    add-int/2addr v1, v2

    int-to-char v1, v1

    move v0, v1

    .end local v0    # "c":I
    return v0
.end method

.method public static supplemental(CC)I
    .locals 5

    .prologue
    .line 780
    move v0, p0

    .local v0, "h":C
    move v1, p1

    .local v1, "l":C
    move v2, v0

    const v3, 0xd800

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    mul-int/lit16 v2, v2, 0x400

    move v3, v1

    const v4, 0xdc00

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "h":C
    return v0
.end method
