/*
 * KF8_Type_Define.h
 *
 *  Created on: 2019-2-22
 *      Author: admin
 */

#ifndef KF8_TYPE_DEFINE_H_
#define KF8_TYPE_DEFINE_H_

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
typedef		signed  char  		int8;
typedef		signed  short  		int16;
typedef		signed  long 		int32;

typedef 	unsigned  char 		uint8;
typedef 	unsigned  char 		uchar;
typedef 	unsigned  short  	uint16;
typedef 	unsigned  long 		uint32;

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
typedef enum
{
	FALSE = 0,
	TRUE = !FALSE
}Boolean;

typedef union
{
	struct
	{
			unsigned char byte0;
			unsigned char byte1;
			unsigned char byte2;
			unsigned char byte3;
	};
	unsigned char 	bytes[4];
	unsigned long	value;
}s_uint32;

typedef union
{
	struct
	{
		unsigned char byte0;
		unsigned char byte1;
	};
	unsigned char 	byte[2];
	unsigned short 	value;
}s_uint16;

typedef union
{
	unsigned char 	value;
	struct
	{
		unsigned char bit0:1;
		unsigned char bit1:1;
		unsigned char bit2:1;
		unsigned char bit3:1;
		unsigned char bit4:1;
		unsigned char bit5:1;
		unsigned char bit6:1;
		unsigned char bit7:1;
	};
}s_uint8;

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define 	DATAEEPROM_BUFFER_SIZE			16
typedef union
{
	struct  // �Զ���Э��ṹ��
	{
			unsigned char byte0;
			unsigned char byte1;
			unsigned char byte2;
			unsigned char byte3;

	};
	unsigned char bytes[DATAEEPROM_BUFFER_SIZE];
}s_Dataeeprom_Buffer;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define 	DATAFLASH_BUFFER_BYTE_SIZE			32  // ע����������Flash��д������

//  ��Ϊ���ߵ������岻֧�ָ���ֵ������֧�ֳ�ֵ�Ľṹ��
typedef 	struct  // �Զ���Э��ṹ��
{
			uint8 id;
			uint8 type;
			uint8 product[6];
			uint8 index[5];
			uint8 reservation[DATAFLASH_BUFFER_BYTE_SIZE-13];  // ǰ��ռ���ֽ������룬�������13
}s_Dataflash_ConstBuffer;
//  �� ������Ҫ����flash��дӦ�õĳ�����������ת����Ҫ��������
typedef union
{
	unsigned char bytes[DATAFLASH_BUFFER_BYTE_SIZE];   // ��Э��ṹ�µĴ������С����
	struct  // �Զ���Э��ṹ�� ����  const����
	{
				uint8 id;
				uint8 type;
				uint8 product[6];
				uint8 index[5];
				uint8 reservation[DATAFLASH_BUFFER_BYTE_SIZE-13];  // ǰ��ռ���ֽ������룬�������13
	};
}s_Dataeeprom_RAMBuffer;        // �� const�󶨵� ��д����֧��,����������ʾ���԰��ֽڸ�ֵ����λ���ռ�ʵ��ԭʼ��ȡFlash�ĸ�λCRET��0xB0ռλ

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#define 	DATAI2C_BUFFER_BYTE_SIZE			10
typedef union
{
	unsigned char bytes[DATAI2C_BUFFER_BYTE_SIZE+5];   // ��Э��ṹ�µĴ������С����
	struct  // �Զ���Э��ṹ�� ����  const����
	{
				uint8 i2cDevAddrL;  // 7λ��ַ��10λ��ַ�ĵ�
				uint8 i2cDevAddrH;  // 10��ַ��
				s_uint8 flag;		//  ���ڹ��������ı�־
				uint8 length;		//  ���ڹ��������ı�־
				uint8 Command;	 	// I2C �ĵ�ַ��Դ   ��������
				uint8 buffer[DATAI2C_BUFFER_BYTE_SIZE];  // ������������д������
	};
}s_I2C_RAMBuffer;

#define 	DATASPI_BUFFER_BYTE_SIZE			10
typedef union
{
	unsigned char bytes[6+DATASPI_BUFFER_BYTE_SIZE];   // ��Э��ṹ�µĴ������С����
	struct  // �Զ���Э��ṹ�� ����  const����
	{
				uint8 head;  		//
				uint8 Command;  	//
				s_uint8 flag;		//  ���ڹ��������ı�־
				uint8 length;		//  ������Ч����
				uint8 buffer[DATASPI_BUFFER_BYTE_SIZE];  // ������������д������
				uint8 checkvalue;  // ����У���
				uint8 assistant;
	};
}s_SPI_RAMBuffer;
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#endif /* KF8_TYPE_DEFINE_H_ */
